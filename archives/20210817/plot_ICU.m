function BackDataICU = ...
    plot_ICU(TH,TH_index,ICU,SimICU,ICU_limit,MonthWeekEN,MonthWeekJP,WeekNumber,Tdata,xline_ind,linecolor,fs,fn,ft,l,Scenario)
% LineWidthVec = [0.5,1.5,0.5,0.5,1.5,0.5];
LineWidthVec = [0.5, 1.5, 0.5];
% Scenario = ["悲観(-2 std)", "悲観" ,"悲観(2 std)","楽観(-2 std)", "楽観" ,"楽観(2 std)"];
% Scenario = ["悲観(2 std)", "悲観" ,"悲観(-2 std)"];

th_wave = 1;


for i = 1:length(TH)
    if abs(TH(i) - TH_index(th_wave)) < 0.0001
        
       
            p(i) = plot([ICU(2:end);SimICU(2:end,i)],linecolor{th_wave},'LineWidth',LineWidthVec(i), ...
                'LineStyle','-');
            hold on 
            %         hold on
            %         yline(TH(i),linecolor{th_wave},TH(i))

        
        BackDataICU(:,th_wave) = [ICU(end-7:end);SimICU(2:end,i)];
        th_wave = th_wave + 1;
        if th_wave > length(TH_index)
            th_wave = length(TH_index);
        end
    else
        plot([ICU(2:end);SimICU(2:end,i)], '--','LineWidth',0.3)
        hold on
        colororder('default')
        %         yline(TH(i),'-',TH(i))
        %         colororder('default')
    end
    hold on
end
plot(ICU(2:end),'-k','LineWidth',1.5,'HandleVisibility','off');

xline(Tdata,'LineWidth',1.5,'HandleVisibility','off');


% yline(ICU_limit,'-g',num2str(ICU_limit),'LineWidth',2.5,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');
% yline(ICU_limit/2,'--k',"50%",'LineWidth',1.0,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');
% yline(ICU_limit,'--k',"100%",'LineWidth',1.0,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');

% yline(ICU_limit/5,'--k',"20%",'LineWidth',1.0,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');

% yline(th_off1,'-r',num2str(th_off1),'LineWidth',1.5,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');
% yline(th_off2,'-b',num2str(th_off2),'LineWidth',1.5,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');
% yline(th_off3,'-k',num2str(th_off3),'LineWidth',1.5,'HandleVisibility','off','LabelHorizontalAlignment','left','LabelVerticalAlignment','bottom');

ax = gca;
ax.YAxis.Color = 'k';
ax.YAxis.FontSize = 12;
ax.XAxis.FontSize = 12;
ax.YAxis.Exponent = 0;

%ytickformat('%,6.0f')
xticks(find(WeekNumber==1))
% lgd = legend([p(2)],Scenario{2});
% legend('','p2','')
% lgd.Location = 'Northeast';
% lgd.FontSize = 16;
xtickangle(45)
xlim([Tdata-7 Tdata+25])
% ylim([0 ICU_limit*1.4])
