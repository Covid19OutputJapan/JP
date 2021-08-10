SimPeriod = 52;        % simulation period in weeks
gamma = 7/12;          % recovery rate from Covid % Should change this to 7/12 (4/25 Kohei Machi)
k = 2;                 % exponent of (1-h*alpha)
hconstant = 1;         % 0 = without intercept, 1 = with intercept for h regression
medical_start_date = datetime(2021,3,18);
elderly_start_date = datetime(2021,5,13);
RetroPeriod = 17;      % retroactive periods used to estimate gamma (gamma???? maybe beta? 7/28 Mori)
RetroPeriodDelta = 2; %17;      % retroactive periods used to estimate delta (Death rate)
RetroPeriodICU_pref = 2; %17; % retroactive periods used to estimate delta_ICU_pref (Tokyo standard Severe case)
RetroPeriodICU_nation = 2; %17;      % retroactive periods used to estimate delta_ICU_nation (National standard Severe case)
RetroPeriodHospital = 2; %13; %17;      % retroactive periods used to estimate delta_Hospital (Hospital)
tt = 12; % Showing previous t periods for the plot
% 経済回復速度
DRi= 26;%17;%26 %10;
% Parameters for beta
retro_ub = 17; % Control the moving average of beta (beta_avg = sum_{t = lb}^{ub} (1/(ub-lb + 1) sum_{x=1}^t (1/t) beta_t)
retro_lb = 17;
% Parameters for mobility estimation
retroH_switch = 1; %If retroH_switch == 1, retroH = TdataGDP - 4, else = retroH
RetroH = 15;
% Parameters for variants
var_infection = 0.3; %Relative increase of infectiousness (alpha varaint)
var_infection_delta = 0.4; %Relative increase of death rate (alpha varaint)
var_growth = 0.47;
% Population
POP_jp = 125710000;
medical_jp = 4700000;
medical_tokyo = 5500000;
elderly_jp = 36000000;
elderly_tokyo = 3100000;  %%% 65 and after: 3,122,068; Tokyo (2020Jan)
ordinary_jp = (POP_jp-elderly_jp-medical_jp);
working_tokyo = 9100000; %%%15 ~ 64 years old: 9,109,812; Tokyo (2020Jan)
children_tokyo = 1600000; %%%0 ~ 15 years old: 1,603,044; Tokyo (2020Jan)
accept_share = 0.9;
accept_share_ordinary = 0.6879; %so that an accept share of age 13-64 = 80%   
accept_share_working_tokyo = 0.8;
% vaccine pace 
PF = 1; % 0 for AZ, 1 for PF
if PF == 0  % AZ
    E1 = 0.365; %0.615;
    E2 = 0.625; %0.64;
    D1 = 0.675; %0.8;85
    D2 = 0.905; %0.85;
else   % PF
    %(based on SPI_M_O, July 7th)
    E1 = 0.45;  
    E2 = 0.815; 
    D1 = 0.865; 
    D2 = 0.96; 
    %(based on SPI_M_O, June 9th)
    %     E1 = 0.38; E2 = 0.795; D1 = 0.68; D2 = 0.925;
    
end

% parameters for ICU
gamma_ICU_nation = 7/26; %7/28 % Recovery rate from ICU
gamma_ICU_pref = 7/28; % Recovery rate from ICU
ICU_nation_adjustment = 0.8;
ICU_pref_adjustment = 0.8;

% parameters for Hospitalizaiton
gamma_Hospital = 7/15; %7/10;
Hospital_adjustment = 0.5; % 0.85; 
Hospital_limit = 6406; %5882;

% Indian Variant Parameters
% var_initial2 = 0.50;
var_growth2 = 0.75;     % weekly growth parameter for logit model
var_infection2 = 0.5; %0.3;%0.2; % relative infection rate for delta variant compared to alpha variant
var_infection_delta2 = 0.1; % relative increase of death rate for delta variant compared to alpha variant
var_start = 1;         % time when the Indian variant starts spreading