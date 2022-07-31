classdef SlugPen22_working_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        H_Figure                        matlab.ui.Figure
        H_figure_grid                   matlab.ui.container.GridLayout
        Button                          matlab.ui.control.Button
        H_PlotPanel                     matlab.ui.container.Panel
        H_plot_grid                     matlab.ui.container.GridLayout
        panel_Thermistors               matlab.ui.container.Panel
        Panel_4                         matlab.ui.container.Panel
        grid_ProcessingInfoLabels       matlab.ui.container.GridLayout
        label_ProcessingTime            matlab.ui.control.Label
        label_Longitude                 matlab.ui.control.Label
        label_Latitude                  matlab.ui.control.Label
        label_Penetration               matlab.ui.control.Label
        label_Station                   matlab.ui.control.Label
        label_Cruise                    matlab.ui.control.Label
        edit_CruiseTitle                matlab.ui.control.Label
        edit_ProcessingTimeTitle        matlab.ui.control.Label
        edit_LongitudeTitle             matlab.ui.control.Label
        edit_LatitudeTitle              matlab.ui.control.Label
        edit_PenetrationTitle           matlab.ui.control.Label
        edit_StationTitle               matlab.ui.control.Label
        Panel_3                         matlab.ui.container.Panel
        Panel_2                         matlab.ui.container.Panel
        grid_TopLabels                  matlab.ui.container.GridLayout
        label_currentpathfull           matlab.ui.control.Label
        label_CurrentPath               matlab.ui.control.Label
        label_SlugHeat                  matlab.ui.control.Label
        TimeminsLabel                   matlab.ui.control.Label
        H_axis_raw                      matlab.ui.control.UIAxes
        H_axis_depth                    matlab.ui.control.UIAxes
        H_axis_accel                    matlab.ui.control.UIAxes
        H_axis_tilt                     matlab.ui.control.UIAxes
        H_DataPanel                     matlab.ui.container.Panel
        H_grid_data                     matlab.ui.container.GridLayout
        H_panel_selected                matlab.ui.container.Panel
        H_grid_selected                 matlab.ui.container.GridLayout
        Selection_ResetButton_2         matlab.ui.control.Button
        H_nextpenetration               matlab.ui.control.Button
        Selection_BeginButton           matlab.ui.control.Button
        Selection_ResetButton           matlab.ui.control.Button
        H_End                           matlab.ui.control.EditField
        EndPenetrationEEditFieldLabel   matlab.ui.control.Label
        H_Heat                          matlab.ui.control.EditField
        HeatPulseHEditFieldLabel        matlab.ui.control.Label
        H_Pen                           matlab.ui.control.EditField
        StartPenetrationPEditFieldLabel  matlab.ui.control.Label
        H_EndEqm                        matlab.ui.control.EditField
        EndEquilibriumW2EditFieldLabel  matlab.ui.control.Label
        H_StartEqm                      matlab.ui.control.EditField
        StartEquilibriumW1EditFieldLabel  matlab.ui.control.Label
        H_Select                        matlab.ui.control.DropDown
        H_panel_plotcontrols            matlab.ui.container.Panel
        H_grid_plotcontrols             matlab.ui.container.GridLayout
        H_decp                          matlab.ui.control.CheckBox
        H_tiltplotcheckbox              matlab.ui.control.CheckBox
        H_clnp                          matlab.ui.control.CheckBox
        H_accelplotcheckbox             matlab.ui.control.CheckBox
        H_rawp                          matlab.ui.control.CheckBox
        H_depthplotcheckbox             matlab.ui.control.CheckBox
        DataLabel                       matlab.ui.control.Label
        PlotsLabel                      matlab.ui.control.Label
        H_panel_info                    matlab.ui.container.Panel
        H_grid_datainfo                 matlab.ui.container.GridLayout
        edit_DecimateFilter             matlab.ui.control.NumericEditField
        DecimateEditFieldLabel          matlab.ui.control.Label
        edit_MeanFilter                 matlab.ui.control.NumericEditField
        MeanEditFieldLabel              matlab.ui.control.Label
        edit_MedianFilter               matlab.ui.control.NumericEditField
        MedianEditFieldLabel            matlab.ui.control.Label
        label_FilterWinfowLength        matlab.ui.control.Label
        edit_NumberofTherm              matlab.ui.control.EditField
        NumberofThermistorsLabel        matlab.ui.control.Label
        EditField_2                     matlab.ui.control.NumericEditField
        EditField_3                     matlab.ui.control.NumericEditField
        H_load                          matlab.ui.control.Button
        H_pulse_W                       matlab.ui.control.EditField
        PulseWLabel                     matlab.ui.control.Label
        H_decay                         matlab.ui.control.EditField
        DecayminEditFieldLabel          matlab.ui.control.Label
        H_pulse_s                       matlab.ui.control.EditField
        PulsesecEditFieldLabel          matlab.ui.control.Label
        H_logint                        matlab.ui.control.EditField
        LogIntervalsLabel               matlab.ui.control.Label
        H_end_time                      matlab.ui.control.EditField
        EndTimeEditFieldLabel           matlab.ui.control.Label
        H_start_time                    matlab.ui.control.EditField
        StartTimeEditFieldLabel         matlab.ui.control.Label
        H_start_date                    matlab.ui.control.EditField
        StartDateEditFieldLabel         matlab.ui.control.Label
        H_filename                      matlab.ui.control.EditField
        FilenameLabel                   matlab.ui.control.Label
        Panel                           matlab.ui.container.Panel
        GridLayout                      matlab.ui.container.GridLayout
        Image                           matlab.ui.control.Image
        Image2                          matlab.ui.control.Image
        H_restart                       matlab.ui.control.Button
        H_quit                          matlab.ui.control.Button
        H_panel_create                  matlab.ui.container.Panel
        H_grid_create                   matlab.ui.container.GridLayout
        H_export_pen                    matlab.ui.control.Button
    end


    
    properties (Access = public)
        Version = '1.0'  % Version of code
        Update = '05.05.2017' % Can change this to 2022 if get code to work
        
        
        % Define global handles, aka PROPERTIES in case of App Designer %
        %filterwindows

        % Number of thermistors
        NoTherm 
       
        
        % Properties for vertical line selections %
        VerticalLine
        roi
        x
        selTime
        selTime_Vector
        SE_VerticalLine
        EE_VerticalLine
        SP_VerticalLine
        HP_VerticalLine
        EP_VerticalLine
        SE_depthLine
        EE_depthLine
        SP_depthLine
        HP_depthLine
        EP_depthLine
        SE_accelLine
        EE_accelLine
        SP_accelLine
        HP_accelLine
        EP_accelLine
        SE_tiltLine
        EE_tiltLine
        SP_tiltLine
        HP_tiltLine
        EP_tiltLine
        
        % Properties for Initializing %

        % Previously hidden handles. Initial conditions all set to NaN in the start up function % 
        All_Zeros
        All_NaN
        H_Selected_raw 
        H_Selected_depth
        H_Selected_accel
        H_Selected_tilt
        H_Selected_raw_text
        H_Selected_depth_text
        H_Selected_accel_text
        H_Selected_tilt_text
        H_LegendSelect
        H_AxLims_Raw
        H_AxLims_Tilt
        H_AxLims_Depth
        H_AxLims_Acc
        H_NoThermistors

        % Flags %        
        ErrorFlag
        CropFlag

        % Preveiously set to {'default'} - I think should swtich to
        % {'test'} for app designer (but check)
        Params 
        ParamsVals
        Parameters
       
  
        % Inital structures %
        S_Axes = struct()
        S_AxLims = struct()
        S_Exe_Controls = struct()
        S_Selections = struct()
        S_Plot_Controls = struct()
        S_Selections_Lines = struct()
        S_VerticalLines = struct()
        S_FileInfo = struct()
        H = struct()
        DATA = struct() 

        %S_PENVAR = struct()
        
        % Write pen file structure of info given by user in dialog box %
        %S_PenHandles % Penetration structure  
        %H_cruisename = 'default'; % User input cruise name
        %H_station = 'default';
        %H_penetration = 'default';
        %H_sensor = 'default';
        %H_datum = 'default';
        %H_instrument = 'default';
        %H_thermistors = 'default';
        %H_lat = 'default';
        %H_lon = 'default';
        %H_writepenfile = 'default';
        %H_tilt = 'default';
        %H_depth = 'default';

        SlugPen_CreatePenFileDialogBox % Dialog Box app for creating penfile

        % Penetration data variables
        Cruisename       
        StationName      
        Penetration      
        ProbeID         
        Datum           
        LoggerID         
        NumberOfSensors  
        Latitude          
        Longitude         
        Tilt_mean        
        Depth_mean  

         % Auxillary Apps
         % --------------
         SetPenInfoApp
    end
    
    properties (Access = private)
        % Data selections for raw, clean, and decimated with ROI
        rawSelect
        clnSelect
        decSelect
        rawData
        clnData
        decData
        roiSelect 

        % Plot checkboxes
        DepthPlot
        AccelPlot
        TiltPlot

        % User input info for penetration file header
        penetrationInfo % Description
        
        % Axes children
        C 

        % Variable to enable the create penfile button %
        PenSet 

    end

    methods (Access = private)

        function xAlign(app)
            % Align inner position left edge and width (x axis) of all 4 plots
            app.H_axis_raw.YLabel.Units = 'normalized';
            app.H_axis_depth.YLabel.Units = 'normalized';
            app.H_axis_accel.YLabel.Units = 'normalized';
            app.H_axis_tilt.YLabel.Units = 'normalized';
            pause(1);
            app.H_axis_accel.InnerPosition(1) = app.H_axis_raw.InnerPosition(1);
            app.H_axis_accel.InnerPosition(3) = app.H_axis_raw.InnerPosition(3);
            app.H_axis_depth.InnerPosition(1) = app.H_axis_raw.InnerPosition(1);
            app.H_axis_depth.InnerPosition(3) = app.H_axis_raw.InnerPosition(3);
            app.H_axis_tilt.InnerPosition(1) = app.H_axis_raw.InnerPosition(1);
            app.H_axis_tilt.InnerPosition(3) = app.H_axis_raw.InnerPosition(3);
            pause(1);
            app.H_axis_raw.PositionConstraint='innerposition';
            app.H_axis_depth.PositionConstraint='innerposition';
            app.H_axis_accel.PositionConstraint='innerposition';
            app.H_axis_tilt.PositionConstraint='innerposition';
            pause(1);
            drawnow;
            pause(0.5)
            
        end
        
        function SelectVerticalLines(app)
        zoom(app.H_axis_raw, 'off')
        pan(app.H_axis_raw, 'off')
        enableDefaultInteractivity(app.H_axis_raw);
        %app.H_axis_raw.Interactions = [];
        app.x = app.H_Select.Value;
        app.roi = drawpoint(app.H_axis_raw); % Must have image processing toolbox, only works with UIAxes in 2019 or later
        %app.roi = ginput(1); --> Only for matlab version 2018b or earlier
        app.selTime = app.roi.Position(1);
        depthLine = xline(app.H_axis_depth, app.selTime, '-.k', 'LineWidth', 2);
        tiltLine = xline(app.H_axis_tilt, app.selTime, '-.k', 'LineWidth', 2);
        accelLine = xline(app.H_axis_accel, app.selTime, '-.k', 'LineWidth', 2);
        app.VerticalLine = xline(app.H_axis_raw, app.selTime, '-.k', app.x, 'LineWidth', 2, "LabelHorizontalAlignment","center","FontSize",24, "FontWeight","bold");
        %app.VerticalLine.Label = app.x;
        app.selTime = datestr(app.selTime, 'mm/dd/yyyy HH:MM:SS');
        delete(app.roi)
        app.VerticalLine.Label = app.x;
        app.VerticalLine.LabelHorizontalAlignment = 'center';
        drawnow;
        switch app.x
            case 'Start Equilibrium (W1)'
                app.H.Selections.Start_Eqm.Value = num2str(app.selTime);
                delete(app.SE_VerticalLine)
                app.SE_VerticalLine = app.VerticalLine;
                delete(app.SE_depthLine)
                app.SE_depthLine = depthLine;
                delete(app.SE_accelLine)
                app.SE_accelLine = accelLine;
                delete(app.SE_tiltLine)
                app.SE_tiltLine = tiltLine;
            case 'End Equilibrium (W2)'
                app.H.Selections.End_Eqm.Value = num2str(app.selTime);
                delete(app.EE_VerticalLine)
                app.EE_VerticalLine = app.VerticalLine;
                delete(app.EE_depthLine)
                app.EE_depthLine = depthLine;
                delete(app.EE_accelLine)
                app.EE_accelLine = accelLine;
                delete(app.EE_tiltLine)
                app.EE_tiltLine = tiltLine;
            case 'Start Penetration (P)'
                app.H.Selections.Start_Pen.Value = num2str(app.selTime);
                delete(app.SP_VerticalLine)
                app.SP_VerticalLine = app.VerticalLine;
                delete(app.SP_depthLine)
                app.SP_depthLine = depthLine;
                delete(app.SP_accelLine)
                app.SP_accelLine = accelLine;
                delete(app.SP_tiltLine)
                app.SP_tiltLine = tiltLine;
            case 'Heat Pulse (H)'
                app.H.Selections.Start_Heat.Value = num2str(app.selTime);
                delete(app.HP_VerticalLine)
                app.HP_VerticalLine = app.VerticalLine;
                delete(app.HP_depthLine)
                app.HP_depthLine = depthLine;
                delete(app.HP_accelLine)
                app.HP_accelLine = accelLine;
                delete(app.HP_tiltLine)
                app.HP_tiltLine = tiltLine;
            case 'End Penetration (E)'
                app.H.Selections.End_Pen.Value = num2str(app.selTime);
                delete(app.EP_VerticalLine)
                app.EP_VerticalLine = app.VerticalLine;
                delete(app.EP_depthLine)
                app.EP_depthLine = depthLine;
                delete(app.EP_accelLine)
                app.EP_accelLine = accelLine;
                delete(app.EP_tiltLine)
                app.EP_tiltLine = tiltLine;
        end
        zoom(app.H_axis_raw, 'on')
        pan(app.H_axis_raw, 'on')
        end
        
        function SelectROI(app)
            app.NoTherm = app.H.Fileinfo.No_Thermistors.Value;
            % Turn off zoom and pan
            pan(app.H_axis_raw, "off");
            zoom(app.H_axis_raw, "off");
            
            % Extract Time
            Time     = app.DATA.Time;       % For Raw and Cln
            Time_dec = app.DATA.Time_dec;   % For Decimated
            % Extract temp data
            Traw = app.DATA.Traw;
            Tcln = app.DATA.Tcln;
            Tdec = app.DATA.Tdec;

            % Combine time and temp data
            rawData = [Time;Traw];
            clnData = [Time; Tcln];
            app.decData = [Time_dec; Tdec];
            disableDefaultInteractivity(app.H_axis_raw)
            app.roiSelect = drawfreehand(app.H_axis_raw);
            app.roiSelect.InteractionsAllowed = 'none';
            drawnow
            % Selected xdata and ydata %
            i=1;
            %rawselected = inROI(app.roiSelect, Time, Traw(1,:))';
            rawSelected=zeros(5174, app.NoTherm);
            clnSelected=zeros(5174, app.NoTherm);
            decSelected=zeros(518, app.NoTherm);
            %rawSelected = inROI(app.roiSelect, Time, Traw(1,:));
            while i<=app.NoTherm
                rawSelected(:,i) = inROI(app.roiSelect, Time, Traw(i,:));
                i=i+1;
            end
            
            rawSelected=rawSelected(i,:);

        end
        
        function PlotData(app)
           loading = uiprogressdlg(app.H_Figure, 'Message', 'Plotting raw data...');
           loading.Value = .6;

            % Determine Number of Thermistors
            app.NoTherm = app.H.Fileinfo.No_Thermistors.Value;

            % Extract Decimated Data for plotting
            T_dec          = app.DATA.Tdec;
            Depth_dec      = app.DATA.Depth_dec;
            G_dec          = app.DATA.G_dec;
            Tilt_dec       = app.DATA.Tilt_dec;
            Time_dec       = app.DATA.Time_dec;
            record_dec     = app.DATA.Record_dec;

            % Extract Clean Data for plotting
            T_cln          = app.DATA.Tcln;

            % Extract Raw Data for plotting
            T      = app.DATA.Traw;
            Depth  = app.DATA.Depth;
            G      = app.DATA.G;
            Tilt   = app.DATA.Tilt;
            Time   = app.DATA.Time;
            record = app.DATA.Record;

            % Enable buttons and fill in text
            %app.H.Exe_Controls.Export_Ascii.Enable='on';
            app.H.Selections.Select.Enable='on';
            app.H.Exe_Controls.Delete.Enable='on';

            %% COLORMAP
            colormap(app.H_axis_raw, 'default');
            CMap= colormap(app.H_axis_raw, 'turbo');
            CMap = flipud(CMap);
            CMap = interp1(1:256,CMap,1:256/(app.NoTherm-1):256); % 'jet' colormap for Matlab version 2019a and later has size 256x3 RBG matrix
            %CMap = interp1([1:64],CMap,[1:64/(app.NoTherm-1):64]); %'jet' colormap for Matlab version 2018b or earlier has size 64x3 RBG matrix
            colormap(app.H_axis_raw, CMap);


            %% Plot DECIMATED (median filtered) TEMPERATURE/OHM DATA AS o's

            % Vector to store plot handles for each thermistor 
            %h_axDec=zeros(1,app.NoTherm);
            leg = zeros(1,app.NoTherm);
            i=1;
            while i<=app.NoTherm-1
                % Plot by time
                h_axDec(i) = plot(app.H_axis_raw, Time_dec,T_dec(i,:),'-o','markersize',2,...
                    'color',CMap(i,:),'markerfacecolor',CMap(i,:));    
                hold(app.H_axis_raw, 'on');
                leg(i) = i;
                i=i+1;
            end

            % Plot DECIMATED Bottom Water
            h_axDec(i) = plot(app.H_axis_raw, Time_dec,T_dec(app.NoTherm,:),'k-x','markersize',2);


            % Save plot handles
            app.H.Plot_Controls.DecimatedPlot.UserData = h_axDec;

            % Enable Plot Control Toggle
            app.H.Plot_Controls.DecimatedPlot.Enable='on';
            
            % Define decimated plot
            app.H.Plot_Controls.DecimatedPlot.Value = app.H_decp.Value; 

            %Legend
            %leg = compose('Thermistor%3.0f', leg);
            %app.H.Plot_Controls.Legend = leg;
            %app.H.Plot_Controls.Legend{app.NoTherm} = 'Bottom Water';
            %lgnd = legend(app.H_axis_raw, app.H.Plot_Controls.Legend, 'AutoUpdate', 'off', 'Location', 'northeast');
            %lgnd.FontSize = 8;


            % Raw Axis Limits
            V_T = axis(app.H_axis_raw);

            % Labels, Date ticks, and Title
            if T_dec(5,10)>100
                ylabel(app.H_axis_raw, 'Resistance (Ohm)');
            else
            ylabel(app.H_axis_raw, 'Temperature (^oC)', 'FontWeight', 'bold');
            end

  
            % Keep Visible or Hide
            if app.H.Plot_Controls.DecimatedPlot.Value == 0
                for i=1:app.NoTherm
                  set(app.H.Plot_Controls.DecimatedPlot.UserData(i),'Visible','off');
                end
            end


            %% Plot CLEAN Data
            % Plot CLEAN (median filtered) data as x's
            % Vector to store plot handles for each thermistor 
            %h_axCln=zeros(1,app.NoTherm);
            i=1;
            while i<=app.NoTherm-1
                h_axCln(i) = plot(app.H_axis_raw, Time,T_cln(i,:),'o','markersize',2,...
                    'color',CMap(i,:),'markerfacecolor',CMap(i,:));
                hold(app.H_axis_raw, "on");
                i=i+1;
            end
            % Plot CLEAN Bottom Water
            h_axCln(i) = plot(app.H_axis_raw, Time,T_cln(app.NoTherm,:),'kv','markersize',2,'markerfacecolor','b');

            % Turn Bottom Water off;
            set(h_axCln(i),'Visible','off')


            % Save plot handles
            app.H.Plot_Controls.CleanPlot.UserData = h_axCln;

            % Enable Plot Control Toggle
            app.H.Plot_Controls.CleanPlot.Enable='on';

            % Keep Visible or Hide
            if app.H.Plot_Controls.CleanPlot.Value == 0
                for i=1:app.NoTherm
                    set(app.H.Plot_Controls.CleanPlot.UserData(i),'Visible','off');
                end
    
            end

            %% RAW DATA PLOT

            % Plot RAW data as x's
            %h_axRaw=zeros(1,app.NoTherm);
            i=1;
            while i<=app.NoTherm-1
                h_axRaw(i) = plot(app.H_axis_raw, Time,T(i,:),'x','markersize',2,'color',CMap(i,:));
                hold(app.H_axis_raw, "on");
                i=i+1;
            end
            % Plot RAW Bottom Water
            h_axRaw(i) = plot(app.H_axis_raw, Time,T(app.NoTherm,:),'kv','markersize',2);

            % Turn Bottom Water off;
            set(h_axRaw(i),'Visible','off')

            % Save plot handles
            app.H.Plot_Controls.RawPlot.UserData = h_axRaw;

            % Enable Plot Control Toggle
            app.H.Plot_Controls.RawPlot.Enable='on';
            app.H.Plot_Controls.RawPlot.Value=1;

            app.H_axis_raw.PositionConstraint = 'innerposition'; % constrains axes box to inner position

            %% DEPTH - DECIMATED
            %nexttile(tile)
            % Plot depth data 
            h_axDep=plot(app.H_axis_depth, Time_dec,-Depth_dec,'b');
            ylabel(app.H_axis_depth, 'Depth (m)', 'FontWeight','bold');
            %set(app.H_axis_depth,'color',[0.9 0.9 0.9]);

            % Depth Axis Limits
            V_Zd = axis(app.H_axis_depth);

            % Add the axes data to the Structure
            app.H.Axes.Depth.UserData = h_axDep;

            app.H_axis_depth.PositionConstraint = 'innerposition'; % constrains axes box to inner position

            %% ACCELERATION - DECIMATED
            %nexttile(tile)
            % Plot Acceleration data 
            h_axAcc=plot(app.H_axis_accel, Time_dec,G_dec,'k');
            ylabel(app.H_axis_accel, 'Acceleration (g)', 'FontWeight','bold');
            %set(app.H_axis_accel,'color',[0.9 0.9 0.9]);

            % Acceleration Axis Limits
            V_Za = axis(app.H_axis_accel);

            % Add the axes data to the Structure
            app.H.Axes.Accel.UserData = h_axAcc;

            app.H_axis_accel.PositionConstraint = 'innerposition'; % constrains axes box to inner position


            %% TILT PLOT - DECIMATED
            %nexttile(tile)
            % Plot Tilt
            plot(app.H_axis_tilt, Time_dec,Tilt_dec,'r'); hold(app.H_axis_tilt, "on")
            ylabel(app.H_axis_tilt, 'Tilt (°)', 'FontWeight','bold');
            %set(app.H_axis_tilt,'color',[0.9 0.9 0.9]);

            % Tilt Axis Limits
            V_Tilt = axis(app.H_axis_tilt);

            app.H_axis_tilt.PositionConstraint = 'innerposition'; % constrains axes box to inner position

            %% STORE ORIGINAL AXES LIMITS
            app.H.Axis_Limits.AxLims_Raw.Value=V_T;
            app.H.Axis_Limits.AxLims_Depth.Value=V_Zd;
            app.H.Axis_Limits.AxLims_Acc.Value=V_Za;
            app.H.Axis_Limits.AxLims_Tilt.Value=V_Tilt;

            %% Link Axes and Assign Dynamic Date Ticks
            tempAx = app.H.Axes.Raw;
            accelAx = app.H.Axes.Accel;
            depthAx = app.H.Axes.Depth;
            tiltAx = app.H.Axes.Tilt;
            ax=[tempAx depthAx accelAx tiltAx];
            linkaxes(ax,'x');
            % dynamicDateTicks(ax,'HH:MM'); --> this is Mike's. I edited this function
            % below to do the same thing but be compatible with App Designer
            mdformat = 'HH:MM:SS'; % variable for month/day format 

            % Apply datetick to all axes in axH, and store any linking information
            % temperature axis
            axH = tempAx;
            axesInfo.Type = 'dateaxes'; % Information stored in axes userdata indicating that these are date axes
            for i = 1:length(axH)
                datetick(axH(i), 'x');
                axesInfo.Linked = axH;
                axesInfo.mdformat = mdformat; % Remember mm/dd format for each axes
                set(axH(i), 'UserData', axesInfo); % Store the fact that this is a date axes and its link & mm/dd information in userdata
            end

            % acceleration axis
            axH = accelAx;
            axesInfo.Type = 'dateaxes'; % Information stored in axes userdata indicating that these are date axes
            for i = 1:length(axH)
                datetick(axH(i), 'x');
                axesInfo.Linked = axH;
                axesInfo.mdformat = mdformat; % Remember mm/dd format for each axes
                set(axH(i), 'UserData', axesInfo); % Store the fact that this is a date axes and its link & mm/dd information in userdata
            end

            % depth axis
            axH = depthAx;
            axesInfo.Type = 'dateaxes'; % Information stored in axes userdata indicating that these are date axes
            for i = 1:length(axH)
                datetick(axH(i), 'x');
                axesInfo.Linked = axH;
                axesInfo.mdformat = mdformat; % Remember mm/dd format for each axes
                set(axH(i), 'UserData', axesInfo); % Store the fact that this is a date axes and its link & mm/dd information in userdata
            end
            axH.YTickLabelRotation = 15;

            % tilt axis
            axH = tiltAx;
            axesInfo.Type = 'dateaxes'; % Information stored in axes userdata indicating that these are date axes
            for i = 1:length(axH)
                datetick(axH(i), 'x');
                axesInfo.Linked = axH;
                axesInfo.mdformat = mdformat; % Remember mm/dd format for each axes
                set(axH(i), 'UserData', axesInfo); % Store the fact that this is a date axes and its link & mm/dd information in userdata
            end
        loading.Message = 'Finishing...';
        loading.Value = .9;

            % Align inner position left edge and width (x axis) of all 4 plots
            app.xAlign

            % Plot Checkboxes for sensors
            % ---------------
            % Plot sensor checkboxes
            % ----------------------
            app.NumberOfSensors = app.NoTherm;
            
                % Grid layout for sensor panel
                % -----------------------------
                    
                    for i=app.NumberOfSensors:-1:1
                        ThermistorGrid = uigridlayout(app.panel_Thermistors, 'BackgroundColor', ...
                        [0.94 0.94 0.94], 'ColumnWidth', {'100x'}, 'RowHeight', cellstr(repmat('1x', app.NumberOfSensors, 1))');
                    end
            
            
                % Create panels for each sensor
                % ------------------------------
                    for i=app.NumberOfSensors:-1:1
                        SensorPanels{i} = uipanel(ThermistorGrid, 'BorderType', ...
                            'none', 'TitlePosition', 'centertop', ...
                            'Title', [' T' num2str(i)], 'FontWeight', 'bold', ...
                            'BackgroundColor', [0.94 0.94 0.94]);
                    end
            
            
                % Grid layout for each sensor
                % -----------------------------
                    for i=app.NumberOfSensors-1:-1:1
                        SensorGrids{i} = uigridlayout(SensorPanels{i}, 'ColumnWidth', ...
                            {'100x'}, 'RowHeight', {'100x'}, 'Padding',[5 5 5 5], ...
                            'BackgroundColor', CMap(i,:));
                    end
                    i = max(app.NumberOfSensors);
                    SensorGrids{i} = uigridlayout(SensorPanels{i}, 'ColumnWidth', ...
                            {'100x'}, 'RowHeight', {'100x'}, 'Padding',[5 5 5 5], ...
                            'BackgroundColor', 'k');
                    SensorPanels{i}.Title = 'BW';
            
                % Checkbox for each sensor
                % -----------------------------
            
                  for i=app.NumberOfSensors:-1:1
                          Checkboxes{i} = uicheckbox(SensorGrids{i}, 'Text', '', ...
                              'Value',true, 'Tooltip', ['Check to display data from sensor T' num2str(i) ' on plots'], ...
                              'tag',['c_b_' num2str(i)], 'ValueChangedFcn', {@cbSensValueChange, h_axDec(i), h_axCln(i), h_axRaw(i), ...
                              app.H_rawp.Value, app.H_clnp.Value, app.H_decp.Value});
                  end
        loading.Value =1;
        close(loading)
        end

        function axesChildrenOFF(app)
                for k = 1:numel(app.C)
                    S(1).type = '()';
                    S(1).subs = {k};
                    S(2).type = '.';
                    S(2).subs = 'Visible';
                    app.C = subsasgn(app.C, S, 'off');
                end
        end

        function axesChildrenON(app)
                for k = 1:numel(app.C)
                    S(1).type = '()';
                    S(1).subs = {k};
                    S(2).type = '.';
                    S(2).subs = 'Visible';
                    app.C = subsasgn(app.C, S, 'on');
                end
            
        end
        
        function plotLayout(app)
            % Turn all values of plot checkboxes to strings
            dp = num2str(app.DepthPlot);
            ap = num2str(app.AccelPlot);
            tp = num2str(app.TiltPlot);
            % Concatenate strings of values with the letter x so that this
            % string can be used in the grid layout function
            dpx = strcat(dp, 'x');
            apx = strcat(ap, 'x');
            tpx = strcat(tp, 'x');

            app.H_plot_grid.RowHeight = {'3x', dpx, apx, tpx, '0.2x'};

            % Assign all children of each axes to variable
            DC = app.H_axis_depth.Children;
            AC = app.H_axis_accel.Children;
            TC = app.H_axis_tilt.Children;
            
            if app.DepthPlot == 0 && app.AccelPlot == 0 && app.TiltPlot == 0
                app.H_axis_depth.Visible = 'off';
                app.C = DC;
                app.axesChildrenOFF

                app.H_axis_accel.Visible = 'off';
                app.C = AC;
                app.axesChildrenOFF

                app.H_axis_tilt.Visible = 'off';
                app.C = TC;
                app.axesChildrenOFF

            elseif app.DepthPlot == 0 && app.AccelPlot == 1 && app.TiltPlot == 0
                app.H_axis_depth.Visible = 'off';
                app.C = DC;
                app.axesChildrenOFF

                app.H_axis_accel.Visible = 'on';
                app.C = AC;
                app.axesChildrenON

                app.H_axis_tilt.Visible = 'off';
                app.C = TC;
                app.axesChildrenOFF

            elseif app.DepthPlot == 0 && app.AccelPlot == 0 && app.TiltPlot == 1
                app.H_axis_depth.Visible = 'off';
                app.C = DC;
                app.axesChildrenOFF

                app.H_axis_accel.Visible = 'off';
                app.C = AC;
                app.axesChildrenOFF

                app.H_axis_tilt.Visible = 'on';
                app.C = TC;
                app.axesChildrenON

            elseif app.DepthPlot == 1 && app.AccelPlot == 0 && app.TiltPlot == 0
                app.H_axis_depth.Visible = 'on';
                app.C = DC;
                app.axesChildrenON

                app.H_axis_accel.Visible = 'off';
                app.C = AC;
                app.axesChildrenOFF

                app.H_axis_tilt.Visible = 'off';
                app.C = TC;
                app.axesChildrenOFF

            elseif app.DepthPlot == 1 && app.AccelPlot == 1 && app.TiltPlot == 0
                app.H_axis_depth.Visible = 'on';
                app.C = DC;
                app.axesChildrenON

                app.H_axis_accel.Visible = 'on';
                app.C = AC;
                app.axesChildrenON

                app.H_axis_tilt.Visible = 'off';
                app.C = TC;
                app.axesChildrenOFF

            elseif app.DepthPlot == 1 && app.AccelPlot == 0 && app.TiltPlot == 1
                app.H_axis_depth.Visible = 'on';
                app.C = DC;
                app.axesChildrenON

                app.H_axis_accel.Visible = 'off';
                app.C = AC;
                app.axesChildrenOFF

                app.H_axis_tilt.Visible = 'on';
                app.C = TC;
                app.axesChildrenON

            elseif app.DepthPlot == 0 && app.AccelPlot == 1 && app.TiltPlot == 1
                app.H_axis_depth.Visible = 'off';
                app.C = DC;
                app.axesChildrenOFF

                app.H_axis_accel.Visible = 'on';
                app.C = AC;
                app.axesChildrenON

                app.H_axis_tilt.Visible = 'on';
                app.C = TC;
                app.axesChildrenON

            elseif app.DepthPlot == 1 && app.AccelPlot == 1 && app.TiltPlot == 1
                app.H_axis_depth.Visible = 'on';
                app.C = DC;
                app.axesChildrenON

                app.H_axis_accel.Visible = 'on';
                app.C = AC;
                app.axesChildrenON

                app.H_axis_tilt.Visible = 'on';
                app.C = TC;
                app.axesChildrenON
            end

            app.xAlign
           
        end
       
       
        
end
    
    
    methods (Access = public)
        
        function setPenInfo(app, cruise, station, pen, sensor, ...
                datum, instrument, numsens, lat, lon, tilt, depth)
                        % Consistent definitions with ROQ15
            app.Cruisename      = cruise;
            app.StationName     = station;
            app.Penetration     = pen;
            app.ProbeID         = sensor;
            app.Datum           = datum;
            app.LoggerID        = instrument;
            app.NumberOfSensors = numsens;
            app.Latitude        = lat;
            app.Longitude       = lon;
            app.Tilt_mean       = tilt;
            app.Depth_mean      = depth;
        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)

   % Make main figure full screen %
        app.H_Figure.WindowState = 'maximized';
   
   % INITIAL CONDITIONS %
       % Penetration Info %
        app.penetrationInfo = ["", "", "", "", "", "", "", "" ...
            "", "", ""];

        % Vertical line begins at x = 0
        enableDefaultInteractivity(app.H_axis_raw);
           
        % Intialize Structure % 
        app.S_Axes = struct('Raw',app.H_axis_raw,'Depth',app.H_axis_depth,...
        'Tilt',app.H_axis_tilt, 'Accel', app.H_axis_accel); 

        % Structure Containing Axes Limits
        app.S_AxLims = struct('AxLims_Raw',app.H_AxLims_Raw,...
        'AxLims_Depth',app.H_AxLims_Depth,...
        'AxLims_Tilt',app.H_AxLims_Tilt,'AxLims_Acc',app.H_AxLims_Acc);

        % Structure Containing Executable Control Handles and Filter Window Lengths
        app.S_Exe_Controls = struct('Load',app.H_restart,...
        'Export_Penfile',app.H_nextpenetration);

        % Structure Containing Handles for Selection Record Numbers
        app.S_Selections = struct('Select',app.H_Select,...
        'Start_Eqm',app.H_StartEqm,'End_Eqm',app.H_EndEqm,'Start_Pen',...
         app.H_Pen,'Start_Heat',app.H_Heat,'End_Pen',app.H_End);

        % Structure Containing Plot Control Handles and Quit
        app.S_Plot_Controls = struct('RawPlot',app.H_rawp,'CleanPlot',app.H_clnp','DecimatedPlot',app.H_decp,...
        'Quit',app.H_quit,'Legend',app.H_LegendSelect);

        %Structure Containing Handles for Selection Vertical Line Plotting
        app.S_Selections_Lines = struct('Raw',app.H_Selected_raw,'Depth',app.H_Selected_depth',...
        'Tilt',app.H_Selected_tilt,...
        'Raw_Text',app.H_Selected_raw_text,...
        'Depth_Text',app.H_Selected_depth_text,'Tilt_Text',app.H_Selected_tilt_text);
        
        app.S_VerticalLines = struct('Start_Eqm_Line', app.SE_VerticalLine, ...
        'End_Eqm_Line', app.EE_VerticalLine, 'Start_Pen_Line', app.SP_VerticalLine, ...
        'Start_Heat_Line', app.HP_VerticalLine, 'End_Pen_Line', app.EP_VerticalLine);

        % Structure Containing Datafile information
        app.S_FileInfo = struct('Filename',app.H_filename,'Start_Date',app.H_start_date,...
        'Start_Time',app.H_start_time,'End_Time',app.H_end_time,...
        'Log_Interval',app.H_logint,'Decay_Time',app.H_decay, 'Pulse_Power', app.H_pulse_W,...
        'Pulse_Length',app.H_pulse_s,...
        'No_Thermistors',app.H_NoThermistors);

        % ----- Structure Containing All Previous Structures ----- %
        app.H = struct('Fileinfo',app.S_FileInfo,'Axes',app.S_Axes,...
        'Exe_Controls',app.S_Exe_Controls,...
        'Selections',app.S_Selections,'Selections_Lines',app.S_Selections_Lines,...
        'Plot_Controls',app.S_Plot_Controls,'Axis_Limits',app.S_AxLims,...
        'Error',app.ErrorFlag,'Crop',app.CropFlag);


        % Disable all buttons but LOAD %
        %app.H_Delete.Enable = 'off';
        %app.H_export_ascii.Enable = 'off';
        app.H_nextpenetration.Enable = "off";
        app.H_export_pen.Enable = 'off';
        %app.H_export_ascii.Enable = "off";
        

        % Make all edit fields uneditable except filter window %
        %app.H_filename.Editable = 'off';
        app.H_start_time.Editable = 'off';
        app.H_logint.Editable = 'off';
        app.H_start_date.Editable = 'off';
        app.H_end_time.Editable = 'off';
        app.H_decay.Editable = 'off';
        app.H_StartEqm.Editable = 'on';
        app.H_EndEqm.Editable = 'off';
        app.H_Pen.Editable = 'off';
        app.H_Heat.Editable = 'off';
        app.H_End.Editable = 'off';
        app.H_pulse_s.Editable = 'off';
        app.H_pulse_W.Editable = 'off';
        
        
        % INITIALIZE %
        % Initial zeros or NaN
        app.H_NoThermistors = app.NoTherm;
        app.All_Zeros = zeros(1,app.NoTherm);
        app.All_NaN = app.All_Zeros/0;
        
        % Set Initial NaN conditions %
        app.H_Selected_raw = app.All_NaN;
        app.H_Selected_depth = app.All_NaN;
        app.H_Selected_accel = app.All_NaN;
        app.H_Selected_tilt = app.All_NaN;
        app.H_Selected_raw_text = app.All_NaN;
        app.H_Selected_depth_text = app.All_NaN;
        app.H_Selected_accel_text = app.All_NaN;
        app.H_Selected_tilt_text = app.All_NaN;
        app.H_LegendSelect = app.All_NaN;
        app.H_AxLims_Raw = app.All_NaN;
        app.H_AxLims_Tilt = app.All_NaN;
        app.H_AxLims_Depth = app.All_NaN;
        app.H_AxLims_Acc = app.All_NaN;
        app.selTime_Vector = app.All_NaN;

        % Hide and disable create penfile dialog box panel
        %app.DialogBox_Panel.Visible = "off";
        %app.H_cruisename.Editable = 'off';
        %app.H_tilt.Editable = 'off';
        %app.H_depth.Editable = 'off';
        %app.H_lon.Editable = 'off';
        %app.H_lat.Editable = 'off';
        %app.H_datum.Editable = 'off';
        %app.H_thermistors.Editable = 'off';
        %app.H_sensor.Editable = 'off';
        %app.H_instrument.Editable = 'off';
        %app.H_penetration.Editable = 'off';
        %app.H_station.Editable = 'off';

        % Turn all plots on and only raw data visible %
        app.H_rawp.Value = 1;
        app.H_clnp.Value = 0;
        app.H_decp.Value = 0;
        app.H_axis_depth.Visible="on";
        app.H_depthplotcheckbox.Value = 1;
        app.DepthPlot = 1;
        app.H_tiltplotcheckbox.Value = 1;
        app.H_axis_tilt.Visible='on';
        app.TiltPlot = 1;
        app.H_accelplotcheckbox.Value=1;
        app.H_axis_accel.Visible="on";
        app.AccelPlot = 1;


        % Set Initial Zero Conditions %
        Traw = 0;
        Tcln = 0;
        Pitch = 0;
        Roll = 0;
        G = 0;
        Tilt = 0;
        Time = 0;
        app.ErrorFlag = 0;
        app.CropFlag = 0;

        % Initial Paramete labels %
        app.Params = {'text'};

        % Set Current path
        % -----------------
        CurrentPath = pwd;
        app.label_currentpathfull.Text = ['...' CurrentPath(end-20:end)];


        end

        % Button pushed function: Selection_ResetButton
        function Selection_ResetButtonPushed(app, event)
            delete(app.SE_VerticalLine);
            delete(app.EE_VerticalLine);
            delete(app.SP_VerticalLine);
            delete(app.HP_VerticalLine);
            delete(app.EP_VerticalLine);
            delete(app.SE_depthLine)
            delete(app.EE_depthLine)
            delete(app.SP_depthLine)
            delete(app.HP_depthLine)
            delete(app.EP_depthLine)
            delete(app.SE_accelLine)
            delete(app.EE_accelLine)
            delete(app.SP_accelLine)
            delete(app.HP_accelLine)
            delete(app.EP_accelLine)
            delete(app.SE_tiltLine)
            delete(app.EE_tiltLine)
            delete(app.SP_tiltLine)
            delete(app.HP_tiltLine)
            delete(app.EP_tiltLine)
            app.H.Selections.Value=app.H_Select.Items(1);
            app.H.Selections.Start_Eqm.Value='';
            app.H.Selections.End_Eqm.Value='';
            app.H.Selections.Start_Pen.Value='';
            app.H.Selections.Start_Heat.Value='';
            app.H.Selections.End_Pen.Value='';
        end

        % Value changed function: H_Select
        function H_SelectValueChanged(app, event)
        % Call function for selections
        app.SelectVerticalLines

        % If start and end times for penetration are selected, enable 'set
        % penetration' button
        PVL = [app.SP_VerticalLine app.EP_VerticalLine];
        if all(ishandle(PVL))
            app.H_nextpenetration.Enable = "on";
        end

        % If all lines exist, enable Create penfile pushbutton
       % AllVL = [app.SE_VerticalLine app.EE_VerticalLine app.SP_VerticalLine app.EP_VerticalLine];
        %if all(ishandle(AllVL))
        %    app.H_export_ascii.Enable='on';
         %   app.H_export_pen.Enable = "on";
       % end          
        end

        % Button pushed function: H_restart
        function H_restartButtonPushed(app, event)

            app.ErrorFlag=0;
            app.H.Exe_Controls.Delete.Enable='off';
            app.H.Plot_Controls.RawPlot.Enable='off';
            app.H.Plot_Controls.CleanPlot.Enable='off';
            app.H.Plot_Controls.DecimatedPlot.Enable='off';
            
  %% REST M FILE FIRST
    disp('Resetting all')
            
            % Initialize Selection Vectors for 22 if No_Thermistors hasn't been
            % populated yet
            app.All_Zeros = zeros(1,app.NoTherm);
            app.All_NaN = app.All_Zeros/0;
            
            %% CLEAR AXES
            
            cla(app.H.Axes.Raw,'reset');
            cla(app.H.Axes.Depth,'reset');
            cla(app.H.Axes.Tilt,'reset');
            cla(app.H.Axes.Accel,'reset');

            %% RESET ALL COMPONENTS %%
                app.H.Selections_Lines.Raw                   = app.All_Zeros;
                app.H.Selections_Lines.Depth                 = app.All_Zeros;
                app.H.Selections_Lines.Tilt                  = app.All_Zeros;
                app.H.Selections_Lines.Accel                 = app.All_Zeros;
                app.H.Selections_Lines.Raw_Text              = app.All_Zeros;
                app.H.Selections_Lines.Depth_Text            = app.All_Zeros;
                app.H.Selections_Lines.Tilt_Text             = app.All_Zeros;
                app.H.Selections_Lines.Accel_Text            = app.All_Zeros;

            % Reset Export/Write Buttons
                app.H.Exe_Controls.Export_Penfile.Enable='off';
                %app.H.Exe_Controls.Export_Ascii.Enable='off';

            % Reset Datafile Information
                app.H.Fileinfo.Filename.Value = '';
                app.H.Fileinfo.Start_Date.Value='';
                app.H.Fileinfo.Start_Time.Value='';
                app.H.Fileinfo.End_Time.Value='';
                app.H.Fileinfo.Log_Interval.Value='';
                app.H.Fileinfo.Pulse_Length.Value='';
                app.H.Fileinfo.Pulse_Power.Value='';
                app.H.Fileinfo.Decay_Time.Value='';

            % Reset Selection info
                app.H.Selections.Select.Enable='on';
                app.H.Selections.Value=app.H_Select.Items(1);
                app.H.Selections.Start_Eqm.Value='';
                app.H.Selections.End_Eqm.Value='';
                app.H.Selections.Start_Pen.Value='';
                app.H.Selections.Start_Heat.Value='';
                app.H.Selections.End_Pen.Value='';
        


        end

        % Button pushed function: H_load
        function H_loadPushed(app, event)
       % % Ask user for number of thermistors before loading in data % %
            %NumThermUserInput = inputdlg("Enter number of thermistors:", "Number of Thermistors", [1 20], "14");
            %figure(app.H_Figure)
%
            %app.NoTherm = str2num(NumThermUserInput{1});
            
            app.NoTherm = app.edit_NumberofTherm;
            

            %% LOAD M FILE NEXT  
        % % EXTRACT FILTERING WINDOWS
            % % User chooses filter window lengths %%%    
            %filterchoice = inputdlg({'Enter median filter window length:', 'Enter mean filter window length:'},...
            %    'Filter Window Lengths', [1 35], {'2', '6'}, 'on');
            %wlmedian = str2num(filterchoice{1}); 
            %wlmean = str2num(filterchoice{2});
            %wldec = 10; 

            wlmedian = app.edit_MedianFilter.Value;
            wlmean = app.edit_MeanFilter.Value;
            wldec = app.edit_DecimateFilter.Value;

             if rem(wlmean,2)~=0
                uiwait(errordlg('Mean Window Length Must be Even Number',...
                'Filter Error','modal'));
                app.ErrorFlag=1;
                return
             end

        % % INPUT FILE
        % Open gui to select filename
        [filename, pathname] = uigetfile({'*.raw';'*.mat'},'Pick a raw data probe output file');

        % Validate the file/path
        if isequal(filename,0)||isequal(pathname,0)
            disp('File not found')
            H_error = errordlg('File not found or not valid');
            app.ErrorFlag=1;
            return
        else
            f=fullfile(pathname,filename);
        
            % See if it's a mat file or a raw file
            [~,fn,ext]=fileparts(filename);
            if strcmp(ext,'.mat')
                disp([' loading ',fn])
                load(f,'DATA')
            else
                % Get the first line and confirm default header start
                fid = fopen(f,'r');
                if fid<0
                    h_error = errordlg('Unable to open selected file','Error','modal');
                    app.ErrorFlag=1;
                    uiwait(h_error);
                    return
                else
                    line = fgetl(fid);
                    if isempty(line)||~strcmp(line(1),'$')
                        fclose(fid);
                        disp('Invalid File Format');
                        app.ErrorFlag=1;
                        return
                    else
                        % Read in Header Here (TO DO) --> don't understand this. It just makes line equal to the 12th line. Why the loop? - KD
                        for n=1:12
                            line = fgetl(fid);
                        end
                
                        % Determining NUMBER OF THERMISTORS - KD
                            % Option 1 (allow user to manually input number of thermistors
                                %app.H.Fileinfo.No_Thermistors.Value = app.NoTherm; % Set the No_Thermistors in H.Fileinfo Structure
                            % Option 2 (Mike's):
                                % Read second line and determine number of thermistors 
                                % There are 11 columns of timing, acceleration, etc.
                                % Add 1 for bottom water sensor
                                line         = strtrim(fgetl(fid)); %--> don't understand this. Now it just makes line equal to the 13th line. What was the point of the loop above?
                                ncols        = length(find(isspace(line)));
                                nThermistors = ncols-11+1;
                                app.H.Fileinfo.No_Thermistors.Value = nThermistors;  % Set the No_Thermistors in H.Fileinfo Structure
                                app.NoTherm = nThermistors;
                                app.edit_NumberofTherm.Value = num2str(nThermistors);

                        % Fill properties that create vectors of zeros or NaNs the size of the number of thermistors (called foo in Mike's code)
                        app.All_Zeros = zeros(1,app.H.Fileinfo.No_Thermistors.Value);
                        app.All_NaN = app.All_Zeros/0;
                    end
                end
                fclose(fid);

       % % ---------------------  LOAD DATA --------------------- % %
       % CHECK FOR UNIX - USE AWK IF POSSIBLE
       if isunix

                %%p51_LoadUnix%%
                [~,fn,~]=fileparts(f);
        
                    %%p51_ScanUnix%%
                    if exist('RawData.tmp','file')
                    delete('RawData.tmp');
                    end
                    disp(' Unix - using awk...')
                    % Grab all lines with length > 80 (Data)
                    eval(['!awk ''length > 80'' ',f,' > RawData.tmp'])
                    % Grab all Acomms Report lines
                    eval(['!awk ''/RPT/'' ',f,' > ',fn,'_HReport.dat'])
                    % Grab all Heat Pulse Report lines
                    eval(['!awk ''/HSTART/'' ',f,' > ',fn,'_HPulse.dat'])
                    
                    % Prep textscan for variable number of thermistors
                  
                    n  = repmat('%n ',1,app.NoTherm); %Thermistors
                    s       = repmat('%s ',1,11);         % Time, Acc, depth
                    fid = fopen('RawData.tmp','r');
                    C   = textscan(fid,[s n]);
                    fclose(fid);
        
                    % Initialize Matrix AllTdata (All Temperature Data)
                    l    = length(C{1});
                    Traw = NaN*zeros(app.NoTherm+1,l);
        
                    % Assign
                    ymd    = str2num(char(strrep(C{3},'-',' ')));
                    hms    = str2num(char(strrep(C{4},':',' ')));
                    accx   = str2num(char(strrep(C{6},'X','')));
                    accy   = str2num(char(strrep(C{7},'Y','')));
                    accz   = str2num(char(strrep(C{8},'Z','')));
                    pwr    = str2num(char(strrep(C{9},'V','')));
                    z      = str2num(char(strrep(C{10},'D','')));
        
                    for i=1:app.NoTherm
                        foo = C{11+i}';
                        Traw(i,1:length(foo))=foo;
                    end
        
                    % Restructure Traw with T1 in row 1, incrementing to Twater
                    Traw(app.NoTherm+1,:)=Traw(1,:);
                    Traw=Traw(2:end,:);
                    %%END of p15_ScanUnix%%
      
                % % QC. Error if number of temperature measurements ~= time. Prompt for CleanRawFile
                if length(Traw)~=length(hms)
                    errorstr='Timing Error. Click OK to attempt to clean';
                        dlgname = 'Timing Error';
                        %uiwait(errordlg(errorstr,dlgname,'modal'));
                        choice = questdlg(errorstr,dlgname,...
                            'OK','Cancel','OK');
        
                    switch choice
                    case 'Cancel'
                        fclose all;close all hidden; clear
                    case 'OK'
                        CleanRawFile(f)
                        [ymd,hms,accx,accy,accz,pwr,z,Traw] = p51_ScanUnix(app.H,f,fn);
                    %if length(Traw)~=length(hms)
                    %    errorstr=['Timing Error Still Exists - Unable to clean'];
                    %    dlgname = ['Timing Error'];
                    %    uiwait(errordlg(errorstr,dlgname,'modal'));
                    %    fclose all;close all hidden; clear
                    %end
                    end
                end
        
        
                % Remove final timestep from temperature data (logger could have been
                % turned off with a partial line)


                % % Parse Timing
                yr    = ymd(:,1);
                mo    = ymd(:,2);
                dy    = ymd(:,3);
                hr    = hms(:,1);
                mn    = hms(:,2);
                sc    = hms(:,3);

                % % Read in Heat Pulse and Report Data
                Other = {};
                fid = fopen([fn,'_HPulse.dat'],'r');
                i=1;
                while i>0
                    line = fgetl(fid);
                    if line == -1
                        fclose(fid);
                        isave=i-1;
                        i=0;
                        break
                    else
                        Other{i}=strtrim(line);
                        i=i+1;
                    end
                end
                fid = fopen([fn,'_HReport.dat'],'r');
                i=isave+1;
                while i>0
                    line = fgetl(fid);
                    if line==-1
                        fclose(fid);
                        i=0;
                        break
                    else
                        Other{i}=strtrim(line);
                        i=i+1;
                    end
                end


                % % Read in Header and Assign Parameters
                fid=fopen(f,'r');

                % Discard Description and first parameter line (no longer used)
                line = fgetl(fid); line = fgetl(fid);

                % Remaining Header Lines
                headerlines = 11;

                for i=1:headerlines
                    line = strtrim(fgetl(fid));
                    a    = find(isspace(line)==1);
                    Params{i}     = strtrim(line(1:a(end)));
                    ParamsVals(i) = str2num(line(a(end):end));
                end
                fclose(fid);

                % Store Header in Structure PARAMETERS
                app.Params     = Params;
                app.ParamsVals = ParamsVals;
                app.Parameters = struct('Field',{app.Params},'Value',app.ParamsVals);

                % % Remove Temporary Files Generated by AWK
                if exist('RawData.tmp','file')
                    delete('RawData.tmp');
                end
                
       
        %%END of p15_LoadUnix%%
       else

           %%START of p51_LoadNonUnix
                % Break apart input file 'f'
                [~,fn,ext] = fileparts(f);
                filename   = [fn ext];

                %% ---------------------  START READING DATA - NOT UNIX --------------------- %%
                %

                % INITIALIZE VARIABLES
                % Time Series Variables
                yr    = [];
                mo    = [];
                dy    = [];
                hr    = [];
                mn    = [];
                sc    = [];
                accx  = [];
                accy  = [];
                accz  = [];
                pwr   = [];
                z     = [];
                T0    = [];
                T1    = [];
                T2    = [];
                T3    = [];
                T4    = [];
                T5    = [];
                T6    = [];
                T7    = [];
                T8    = [];
                T9    = [];
                T10   = [];
                T11   = [];
                T12   = [];
                T13   = [];
                T14   = [];
                Other = {};

                % Header Parameters
                Params    = {};
                ParamVals = [];
                Record    = [];
                
                %% QC Valid ROQ Heat Flow Probe Log File
                fid  = fopen(f,'r');
                line = fgetl(fid);
                if length(line)~=21
                    fclose(fid);
                    h_error = errordlg('This is not an ROQ RAW file','Error','modal');
                    uiwait(h_error);
                    ErrorFlag=1;
                    return
                end

                %% READ HEADER
                % Discard Description and first parameter line (no longer used)
                frewind(fid);
                line = fgetl(fid); line = fgetl(fid);

                % Remaining Header Lines
                headerlines = 11;

                % Read Header
                for i=1:headerlines
                    line = strtrim(fgetl(fid));
                    a    = find(isspace(line)==1);
                    Params{i}     = strtrim(line(1:a(end)));
                    ParamsVals(i) = str2num(line(a(end):end));
                end

                % Store Header in Structure PARAMETERS
                app.Params     = Params;
                app.ParamsVals = ParamsVals;
                app.Parameters = struct('Field',{app.Params},'Value',app.ParamsVals);

                %% Waitbar
                foo = strrep(filename,'_','-');
                h_wait = waitbar(0,['Loading ',foo]);
                set(h_wait,'name','Please Wait')
                k_wait = 1;

                %% READ REMAINING DATA
                i=1; % Valid Data Counter
                n=1; % Other Command Counter
                while i>0
                    line = fgetl(fid);
                    if line == -1
                        disp('Done')
                        fclose(fid);
                        i=0;
                        break
                    else
                        % Check for Data Line or Comment Line
                        a = find(isspace(line)==1);
                        if ~contains(line,'!') && length(a)==25
                            % Data Line
                            v1  = line(1:a(1)-1);
                            v2  = line(a(1)+1:a(2)-1);
                            v3  = line(a(2)+1:a(3)-1);
                            v4  = line(a(3)+1:a(4)-1);
                            v5  = line(a(4)+1:a(5)-1);
                            v6  = line(a(5)+1:a(6)-1);
                            v7  = line(a(6)+1:a(7)-1);
                            v8  = line(a(7)+1:a(8)-1);
                            v9  = line(a(8)+1:a(9)-1);
                            v10 = line(a(9)+1:a(10)-1);
                            v11 = line(a(10)+1:a(11)-1);
                            v12 = line(a(11)+1:a(12)-1);
                            v13 = line(a(12)+1:a(13)-1);
                            v14 = line(a(13)+1:a(14)-1);
                            v15 = line(a(14)+1:a(15)-1);
                            v16 = line(a(15)+1:a(16)-1);
                            v17 = line(a(16)+1:a(17)-1);
                            v18 = line(a(17)+1:a(18)-1);
                            v19 = line(a(18)+1:a(19)-1);
                            v20 = line(a(19)+1:a(20)-1);
                            v21 = line(a(20)+1:a(21)-1);
                            v22 = line(a(21)+1:a(22)-1);
                            v23 = line(a(22)+1:a(23)-1);
                            v24 = line(a(23)+1:a(24)-1);
                            v25 = line(a(24)+1:end);

                            % Assign
                            %     Yr Mo Dy
                            v  = str2num(strrep(v1,'-',' '));
                            yr(i,:) = v(1);
                            mo(i,:) = v(2);
                            dy(i,:) = v(3);
                            %     Hr Min Sec
                            v  = str2num(strrep(v4,':',' '));
                            (strrep(v4,':',' '));
                            hr(i,:) = v(1);
                            mn(i,:) = v(2);
                            sc(i,:) = v(3);
                            %     Acceleration
                            accx(i,:) = str2num(strrep(v6,'X',''));
                            accy(i,:) = str2num(strrep(v7,'Y',''));
                            accz(i,:) = str2num(strrep(v8,'Z',''));
                            %     Voltage
                            pwr(i,:)  = str2num(strrep(v9,'V',''));
                            %     Depth
                            z(i,:)    = str2num(strrep(v10,'D',''));
                            %     Thermistors
                            T0(i,:)   = str2num(v12);
                            T1(i,:)   = str2num(v13);
                            T2(i,:)   = str2num(v14);
                            T3(i,:)   = str2num(v15);
                            T4(i,:)   = str2num(v16);
                            T5(i,:)   = str2num(v17);
                            T6(i,:)   = str2num(v18);
                            T7(i,:)   = str2num(v19);
                            T8(i,:)   = str2num(v20);
                            T9(i,:)   = str2num(v21);
                            T10(i,:)  = str2num(v22);
                            T11(i,:)  = str2num(v23);
                            T12(i,:)  = str2num(v24);
                            T13(i,:)  = str2num(v25);

                            Traw  = [T1'; T2'; T3'; T4'; T5'; T6'; T7'; T8'; T9'; T10'; T11'; T12'; T13'; T0'];

                            % Increment
                            i=i+1;
                        else
                          %  Other{n}=line;
                          %  n=n+1;
                        end
                    end
                    waitbar(k_wait/5000,h_wait);
                    if k_wait==5000
                        k_wait=0;
                    end
                    k_wait=k_wait+1;
                end
                close(h_wait);

            %% END of p51_LoadNonUnx %%
       end

        
        
        % % ACCELERATION, TILT
        
        % Calculate TILT %
            % Vertical Acceleration: -256 --> +256 == -2g --> + 2g
            G = accz*(2/256);

            % Vertical Acceleration deviation from 1 G
            Gdev = abs(1-abs(G));

            % Calculate Tilt : -1G = 0 deg; 0G = 90 deg
            vert = 0; % when probe is vertical
            hor = 90; % when probe is horizontal
            devMin = 0; % minumum deviation from vertical
            devMax = 1; % maximum deviation from vertical
            
            Tilt = vert-((Gdev-devMin))*(vert-hor)./(devMax-devMin);
         
        % END p51_Acceleration(accx,accy,accz)



        % % QC DEPTH
        a=find(z<0); % changed Z's that are less than 0 to NaN
        if ~isempty(a)
            z(a)=NaN;
        end
        
        % QC Year
        if yr(1)==0
            yr(1:end)=21;
        end
            
        if yr(1)<2000
            yr=yr+2000;
        end

        % % ----------------------------------------------- % %
        %                                                   %
        %                2020 Filtering Change              %
        %                                                   %
        %     Take only Unique time values                  %                           %
        %                                                   %
        
        timeNum  = datenum(yr,mo,dy,hr,mn,sc); 
        a        = find(unique(timeNum));  % To handle duplicate times  - KD
        timeNumU = timeNum(a);
        accxU    = accx(a);
        accyU    = accy(a);
        acczU    = accz(a);
        pwrU     = pwr(a);
        tiltU    = Tilt(a);
        gU       = G(a);
        zU       = z(a);
        TrawU    = Traw(:,a);
       
        
        % % Clean / Filter / Decimate

        % START p51_CFD(Traw, wlmedian,wlmean,wldec,app.NoTherm,timeNumU)
        
            Tallf1    = Traw;
            b         = Tallf1<=0; % I changes this variable from a to b so that the variable a above remains the same (bc is used later)
            Tallf1(b) = NaN;
            
            % % Despike by taking running median
            disp('... running median filtering...')
            for i = 1:app.NoTherm
                eval(['Tallf2(',int2str(i),',:)=movmedian(Tallf1(',int2str(i),',:),wlmedian);'])
            end
            % % Smooth by taking running mean
            disp('... running mean filtering...')
            for i = 1:app.NoTherm
                eval(['Tallf2(',int2str(i),',:)=rbmmed(Tallf2(',int2str(i),',:),wlmean);'])
            end
            
            % Assign median filtered values to matrix Tcln (CLEAN)
            Tcln = Tallf2;

            % Flip time
            timeNumU = timeNumU';
            
            % Decimate and assign values to matrix Tdec (DECIMATED)
            disp(['...decimating to ',int2str(wldec),'-s interval...'])
            n=1:wldec:length(Tcln(1,:));
            Tdec=Tcln(:,n);
            timeDec=timeNumU(n);
          
         % END START p51_CFD %
        

       
        % % TIMING
        % Create Datenumber & Record Counter
        timestr = datestr(timeNumU);
        
        Time = timeNumU;

        Record       = 1:1:length(Time);
        RecordU      = Record(a);


        % % ASSIGN DECIMATED DATA

        n          = 1:wldec:length(TrawU);
        Time_dec   = timeDec;
        Record_dec = RecordU(n);
        %Pitch_dec  = pitchU(n);
        %Roll_dec   = rollU(n);
        G_dec      = gU(n);
        Tilt_dec   = tiltU(n);
        Power_dec  = pwrU(n);
        Depth_dec  = zU(n);

        % % DISPLAY ACOMMS DATA - HEAT PULSE AND JOULES
        disp('Acomms Data')
        disp(Other')

        % % FOLD DATA INTO STRUCTURE

        % Store Acoustic Comms in Structure Acomms
        S_Acomms = struct('Acomms',{Other'});

        app.DATA = struct('Traw',TrawU,'Tcln',Tcln,'Tdec',Tdec,...
            'G',gU,'G_dec',G_dec,'Tilt',tiltU,'Tilt_dec',Tilt_dec,...
            'Time',timeNumU,'Time_dec',Time_dec,...
            'Record',RecordU,'Record_dec',Record_dec,...
            'Power',pwrU,'Power_dec',Power_dec,...
            'Depth',zU,'Depth_dec',Depth_dec,...
            'Acc_x',accxU,...
            'Acc_y',accyU,...
            'Acc_z',acczU,...
            'Parameters',{app.Parameters},...
            'Acomms',{Other'});

    end
end


    % % ASSIGN FILE INFO
    app.H.Fileinfo.Start_Date.Value=datestr(app.DATA.Time(1),2);
    app.H.Fileinfo.Start_Time.Value=datestr(app.DATA.Time(1),13);
    app.H.Fileinfo.End_Time.Value=datestr(app.DATA.Time(end),13);
    %H.Fileinfo.Filename.String=filename(11:end); % Cut off typical client_FUG17_...
    app.H.Fileinfo.Filename.Value=filename;
    app.H.Fileinfo.HFID=filename(17:end);
    app.H.Fileinfo.Log_Interval.Value=num2str(app.DATA.Parameters.Value(6));
    app.H.Fileinfo.Decay_Time.Value=num2str(app.DATA.Parameters.Value(5));
    app.H.Fileinfo.Pulse_Length.Value=num2str(app.DATA.Parameters.Value(3));
    app.H.Fileinfo.Pulse_Power.Value=num2str(app.DATA.Parameters.Value(4));





% START p51_Plot_ROQ(H,DATA) %
    app.PlotData
    figure(app.H_Figure)


        end

        % Button pushed function: Selection_BeginButton
        function Selection_BeginButtonButtonPushed(app, event)
            app.SelectVerticalLines
        end

        % Value changed function: H_decp
        function H_decpValueChanged(app, event)
        DecValue = app.H_decp.Value;
            %p51_PlotSelect toggles Decimated, Clean, and Raw Data plot on/off
        if DecValue == 0
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.DecimatedPlot.UserData(i),'Visible','off');
            end
        else
            %set(H.Plot_Controls.Legend.UserData(1),'Visible','on');
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.DecimatedPlot.UserData(i),'Visible','on');
            end
        end

        end

        % Value changed function: H_clnp
        function H_clnpValueChanged(app, event)
        CleanValue = app.H_clnp.Value;
            % Clean Plot
        if CleanValue == 0
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.CleanPlot.UserData(i),'Visible','off');
            end
        else
            %set(H.Plot_Controls.Legend.UserData(2),'Visible','on');
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.CleanPlot.UserData(i),'Visible','on');
            end
        end
        end

        % Value changed function: H_rawp
        function H_rawpValueChanged(app, event)
        RawValue = app.H_rawp.Value;
        if RawValue == 0
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.RawPlot.UserData(i),'Visible','off');
            end
        else
            %set(H.Plot_Controls.Legend.UserData(3),'Visible','on');
            for i=1:app.H.Fileinfo.No_Thermistors.Value
                set(app.H.Plot_Controls.RawPlot.UserData(i),'Visible','on');
            end
        end
        end

        % Callback function
        function H_DeleteButtonPushed(app, event)
            Time     = app.DATA.Time;       % For Raw and Cln
            Time_dec = app.DATA.Time_dec;   % For Decimated

            % Extract temp data
            Traw = app.DATA.Traw;
            Tcln = app.DATA.Tcln;
            Tdec = app.DATA.Tdec;


        %% SELECT DATA WITH FREEHAND DRAWING %%
            % Select data %
            app.SelectROI
            % Pop up dialog to ensure user wants to delete the selected
            % data %
            ButtonName = questdlg('Are you satisfied with the points selects?', ...
                'Yes','Cancel Selection');

            switch ButtonName
                case 'Yes'
                    delete(ButtonName)
                case 'Cancel Selection'
                    app.rawSelected=[];
                    app.clnSelected=[];
                    app.decSelected=[];
                    delete(app.roiSelect)     
            end

            % Only Operate on Visible Data : Set Selected Points to NAN
            % Decimated
            if app.H.Plot_Controls.DecimatedPlot.Value==1
                app.decData(1,app.decSelected) = 0/0;
                Time_dec = app.decData(1,:);
                app.decData(2,app.decSelected) = 0/0;
                Tdec= app.decData(2,:);
            end
            
            % Clean
            if app.H_clnp==1
                app.clnData(1,app.rawSelected) = 0/0;
                Time = app.clnData(1,:);
                app.clnData(2,app.clnSelected) = 0/0;
                Tcln = app.clnData(2,:);
            end
            
            % Raw
            if app.H_rawp==1
                app.rawData(1,app.rawSelected) = 0/0;
                Time = app.rawData(1,:);
                app.rawData(2,app.rawSelected) = 0/0;
                Traw = app.rawData(2,:);
            end
            app.DATA.Traw = Traw;
            app.DATA.Tcln = Tcln;
            app.DATA.Tdec = Tdec;

            app.DATA.Time = Time;
            app.DATA.Time_dec = Time_dec;
    
            %app.DATA.Depth_dec = 
         
            delete(roiSelect);
            cla(app.H_axis_raw);
            app.PlotData
        end

        % Button pushed function: H_export_pen
        function H_export_penButtonPushed(app, event)
       % Set input values %   
            Depth = app.DATA.Depth_dec;
            Depth = Depth';
            Time = app.DATA.Time_dec;
            Tilt = app.DATA.Tilt_dec;
            record = app.DATA.Record_dec;
            record = record';

       % Define penetration measurement Start and End %
            msmt_start = datenum(app.H.Selections.Start_Pen.Value, 'mm/dd/yyyy HH:MM:SS');
            msmt_end = datenum(app.H.Selections.End_Pen.Value, 'mm/dd/yyyy HH:MM:SS');

         % Check year and correct %
            loggerStart = datevec(datestr(Time));
            loggerYear = loggerStart(1,1);
            if loggerYear < 2021
                loggerStart(:,1)=loggerStart(:,1)+2000;
                Time=datenum(loggerStart);
            end
         
          % Find mean depth and tilt records within measurement period
               a = find(Time>=msmt_start & Time<=msmt_end);
               if ~isempty(a)
                   pen_depth = mean(Depth(a), 'omitnan');
                   pen_tilt = mean(Tilt(a), 'omitnan');
                   pen_tilt = sprintf('%2.1f', pen_tilt);
                   pen_tilt = str2double(pen_tilt);
               else
                   errordlg('No Data in Time Window', 'Error', 'modal')
                   return
               end
          

           % WRITE PENFILE CODE %

            % Temperature Data
            T      = app.DATA.Tdec;
            Tilt   = app.DATA.Tilt_dec;
            Depth  = app.DATA.Depth_dec;
            record = app.DATA.Record_dec;
            Time   = app.DATA.Time_dec;

            % Penfile Name
            cruise_name     = app.Cruisename;
            stn_name        = app.StationName;
            pen_name        = app.Penetration;
            penfile_name    = [cruise_name , ' ', stn_name, ' ', pen_name];





            PenetrationRecord_time = datenum(app.H.Selections.Start_Pen.Value,'mm/dd/yy HH:MM:SS'); % START of PEN
            HeatPulseRecord_time   = datenum(app.H.Selections.Start_Heat.Value,'mm/dd/yy HH:MM:SS'); % START of HEAT PULSE
            EndRecord_time         = datenum(app.H.Selections.End_Pen.Value,'mm/dd/yy HH:MM:SS'); % END of entire RECORD

            BottomWaterStart_time   = datenum(app.H.Selections.Start_Eqm.Value,'mm/dd/yy HH:MM:SS'); % START of bottom water EQUILIBRIUM
            BottomWaterEnd_time     = datenum(app.H.Selections.End_Eqm.Value,'mm/dd/yy HH:MM:SS'); % END of bottom water EQUILIBRIUM

            % Variable HeatPulseRecord will be empty if there is no heat pulse. Set to
            % zero
            if isempty(HeatPulseRecord_time)
                HeatPulseRecord = '0';
            end

            % Penfile Records
            % Variables for indexing, all DECIMATED TIME INDICES
                a = find(Time>=BottomWaterStart_time & Time<=EndRecord_time); % From start of equilibrium to end of record
                b = find(Time<=PenetrationRecord_time); % Prior to penetration (only in bottom water)
                c = find(Time>=PenetrationRecord_time & Time<=EndRecord_time); % From start of penetration to end of record (end of record = end of penetration)

            PenfileRecords = record(a); % records from start of equilibrium to end of record
            PenfileTemps   = T(1:app.NoTherm,a); % temps of each thermistor from start of equilibrium to end of record
            BottomWaterRawData = T(1:app.NoTherm,b(end)); % temps of each thermistor right before penetration
            WaterSensorRawData = PenfileTemps(end, :); % temps of only bottom water thermistor ('T0')

            % Tapfile Records
            TapfileRecords  = PenfileRecords;
            TapfileTilt     = abs(Tilt(a));
            TapfilePressure = Depth(a);
            PenfileAveTilt  = mean(abs(Tilt(c))); % MH update for ave on-bottom tilt

            % Transpose for writing
            BottomWaterRawData = BottomWaterRawData';
            PenfileRecords     = PenfileRecords';
            PenfileTemps       = PenfileTemps';
            TapfileRecords     = TapfileRecords';
            TapfileTilt        = TapfileTilt';
            TapfilePressure    = TapfilePressure';
            WaterSensorRawData = WaterSensorRawData';

            % % OFFSET PENETRATIONRECORD, HEATPULSERECORD, BOTTOMWATERSTART, BOTTOMWATEREND
            %
            % Find closest record to penetration time
            foo = abs(PenetrationRecord_time-Time);
            a   = find(foo==min(foo));
            PenetrationRecord = record(a(1));

            % Find closest record to heat pulse time (if there was a pulse)
            if ~isempty(HeatPulseRecord_time)
                foo = abs(HeatPulseRecord_time-Time);
                a   = find(foo==min(foo));
                HeatPulseRecord = record(a(1));
            end


            % Find closest record to bottom water start time
            foo = abs(BottomWaterStart_time-Time);
            a   = find(foo==min(foo));
            % MH ROQ15 edit take next record
            BottomWaterStart = record(a(1)+1);

            % Find closest record to bottom water end time
            foo = abs(BottomWaterEnd_time-Time);
            a   = find(foo==min(foo));
            BottomWaterEnd = record(a(1));

            % Offset so records increment sequentially
            PenfileRecord_Offset = PenfileRecords(1);

            PenfileRecords_sequential = 1:1:length(PenfileRecords);
            TapfileRecords_sequential = PenfileRecords_sequential;
            a=find(PenfileRecords==PenetrationRecord);
            b=find(PenfileRecords==HeatPulseRecord);
            c=find(PenfileRecords==BottomWaterStart);
            d=find(PenfileRecords==BottomWaterEnd);
            

            PenetrationRecord_sequential = a;
            HeatPulseRecord_sequential   = b;
            BottomWaterStart_sequential  = c;
            BottomWaterEnd_sequential    = d;
            EndRecord_sequential         = PenfileRecords_sequential(end);

            BottomWaterEndData = PenfileTemps(d, 1:app.NoTherm); % this is used IF you want to define bottom water temp as the END OF EQUILIBRIUM chosen graphically (alternate is BottomWaterRawData)

            %QC
            % set HeatPulseRecord_sequential to zero if no heat pulse
            if isempty(b)
                HeatPulseRecord_sequential = 0;
            end

            if isempty(a)||isempty(c)||isempty(d)
                disp(' Errorcheck in p51_WritePenFile_ROQ line 128')
                keyboard % this funciton stops the execution of the file and gives control to the user's keyboard
            end

            % % Write the Pen File
            PenfileName = [penfile_name,'.pen'];
            fido = fopen(PenfileName,'wt');
            if fido<1
                beep;
                disp(['Unable to open ',PenfileName,' for writing. Breaking.'])
                return
            else
                % Header
                hdrstr1 = [app.StationName,' ',app.Penetration,' ','''', app.Cruisename,'''', ' ',app.Datum,];
                fprintf(fido,'%s\n',hdrstr1);
                fprintf(fido,'%6.6f %6.6f %6.0f %6.2f\n', str2num(app.Latitude), str2num(app.Longitude), str2num(app.Depth_mean), str2num(app.Tilt_mean));
                hdrstr3 = [app.LoggerID,'  ',app.ProbeID,'  ',app.NumberOfSensors];
                fprintf(fido,'%s\n',hdrstr3);
                fprintf(fido,'%6.0f\n',PenetrationRecord_sequential);
                fprintf(fido,'%6.0f %6.0f %6.0f\n',HeatPulseRecord_sequential,BottomWaterStart_sequential,BottomWaterEnd_sequential);
    
                % Ouptut Format for Bottom Water Data
                Fmt = '%6.3f' ;
                FmtBW = repmat(Fmt,1,app.NoTherm);
                FmtBW = [FmtBW, '\n'];

                % Bottom Water
                %fprintf(fido,FmtBW,BottomWaterRawData); % if you want to define the bottom water temp as the final temp recorded PRIOR to penetration
                fprintf(fido,FmtBW,BottomWaterEndData); % this is used IF you want to define bottom water temp as the END OF EQUILIBRIUM chosen graphically (alternate is BottomWaterRawData)
  
                % Output Format for Thermistor Data
                Fmt = '%6.3f';
                Fmt = repmat(Fmt,1,app.NoTherm);
                Fmt = ['%6.0f ',Fmt, '\n'];
    
                % Thermistor Data + tilt + depth (m)
                [nrows,~] = size(PenfileTemps);
                i=1;
                while i<=nrows
                    fprintf(fido,Fmt,PenfileRecords_sequential(i),PenfileTemps(i,:));
                    i=i+1;
                end
                fclose(fido);
            end
            
            % Close dialog box panel
            %app.DialogBox_Panel.Visible='off';

            % Inform User that a penfile was created
            MessageStr = ['Created ',PenfileName];
            uiwait(msgbox(MessageStr,'Success','modal'));

            % Write the TAP file
            TapfileName = [penfile_name,'.tap'];

            fido = fopen(TapfileName,'wt');
            if fido<1
                beep;
                disp(['Unable to open ',TapfileName,' for writing. Breaking.'])
                return
            else
    
                % Tilt and Pressure Data
                nrows = length(TapfileRecords);
                i=1;
                while i<=nrows
                    fprintf(fido,'%6.0f %6.2f %6.0f\n',TapfileRecords_sequential(i),TapfileTilt(i),TapfilePressure(i));
                    i=i+1;
                end
                fclose(fido);
            end

            % Inform User that a tapfile was created
            MessageStr = ['Created ',TapfileName];
            uiwait(msgbox(MessageStr,'Success','modal'));

            % Variables used in .pen file
            % --------------------------------------

            S_PENVAR = struct('BototmWaterRawData', BottomWaterEndData, 'AllRecords', ...
                PenfileRecords_sequential, 'AllSensorsRawData', PenfileTemps, 'WaterSensorRawData', WaterSensorRawData, ...
                'PenetrationRecord', PenetrationRecord_sequential, 'HeatPulseRecord', HeatPulseRecord_sequential, 'EndRecord', ...
                EndRecord_sequential, 'EqmStartRecord', BottomWaterStart_sequential, 'EqmEndRecord', BottomWaterEnd_sequential);

            % Create data structure to store input and output values %
            S_PenHandles = struct('CruiseName',app.Cruisename,'StationName',app.StationName,...
                'Penetration',app.Penetration,'ProbeId',app.ProbeID,'Datum',app.Datum,...
                'LoggerId',app.LoggerID,'NumberofSensors',app.NumberOfSensors,'Latitude',app.Latitude,...
                'Longitude',app.Longitude,...
                'Tilt',app.Tilt_mean,'Depth',app.Depth_mean) ;

            
            % Variables used in .ptap file
            % --------------------------------------
            S_TAPVAR = struct('TAPRecord', TapfileRecords_sequential, 'Tilt', TapfileTilt, 'Depth', TapfilePressure);

            % Save Workspace
            save(penfile_name, 'S_PENVAR', 'S_PenHandles', 'S_TAPVAR');

           % save SlugPen.mat
     
        end

        % Button pushed function: H_nextpenetration
        function H_nextpenetrationPushed(app, event)
    
         % Set input values %   
            Depth = app.DATA.Depth_dec;
            Depth = Depth';
            Time = app.DATA.Time_dec;
            Tilt = app.DATA.Tilt_dec;
            record = app.DATA.Record_dec;
            record = record';
         
         % Define penetration measurement Start and End %
            msmt_start = datenum(app.H.Selections.Start_Pen.Value, 'mm/dd/yyyy HH:MM:SS');
            msmt_end = datenum(app.H.Selections.End_Pen.Value, 'mm/dd/yyyy HH:MM:SS');

         % Find mean depth and tilt records within measurement period
               a = find(Time>=msmt_start & Time<=msmt_end);
               if ~isempty(a)
                   pen_depth = mean(Depth(a), 'omitnan');
                   pen_tilt = mean(Tilt(a), 'omitnan');
                   pen_tilt = sprintf('%2.1f', pen_tilt);
                   pen_tilt = str2double(pen_tilt);
               else
                   errordlg('No Data in Time Window. Please assign start and end of penetration times.', 'Error', 'modal')
                   return
               end
            
         % Create penfile input auxiallary app
           app.SetPenInfoApp = SetPenInfo(app, app.NoTherm, pen_tilt, pen_depth);

           app.H_export_pen.Enable = "on";
           %app.H_export_ascii.Enable = "on";
           app.PenSet = 1;
        end

        % Callback function
        function H_cancelpenfileButtonPushed(app, event)
            %app.DialogBox_Panel.Visible="off";
        end

        % Value changed function: H_StartEqm
        function H_StartEqmValueChanged(app, event)
            value = str2num(app.H_StartEqm.Value);
            app.SE_VerticalLine = xline(app.H_axis_raw, value);
            app.SE_VerticalLine.Label = "Start Equilibrium (W1)";
            app.SE_VerticalLine.LabelHorizontalAlignment = 'center';
        end

        % Callback function
        function FilterButtonPushed(app, event)
        % % User chooses filter window lengths %%%    
            filterchoice = inputdlg({'Enter median filter window length:', 'Enter mean filter window length:'},...
                'Filter Window Lengths', [1 35], {'2', '6'});
            wlmedian = str2double(filterchoice{1}); 
            wlmean = str2double(filterchoice{2});
            wldec = 10; 

             if rem(wlmean,2)~=0
                uiwait(errordlg('Mean Window Length Must be Even Number',...
                'Filter Error','modal'));
                app.ErrorFlag=1;
                return
             end

        % % CleanRawData File -- not sure if I should keep this bc not sure
        % what it is doing - KD
          
                 % % QC. Error if number of temperature measurements ~= time. Prompt for CleanRawFile
                if length(Traw)~=length(hms)
                    errorstr='Timing Error. Click OK to attempt to clean';
                        dlgname = 'Timing Error';
                        %uiwait(errordlg(errorstr,dlgname,'modal'));
                        choice = questdlg(errorstr,dlgname,...
                            'OK','Cancel','OK');
        
                    switch choice
                    case 'Cancel'
                        fclose all;close all hidden; clear
                    case 'OK'
                        CleanRawFile(f)
                        [ymd,hms,accx,accy,accz,pwr,z,Traw] = p51_ScanUnix(app.H,f,fn);
                    %if length(Traw)~=length(hms)
                    %    errorstr=['Timing Error Still Exists - Unable to clean'];
                    %    dlgname = ['Timing Error'];
                    %    uiwait(errordlg(errorstr,dlgname,'modal'));
                    %    fclose all;close all hidden; clear
                    %end
                    end
                end

        
        end

        % Value changed function: H_depthplotcheckbox
        function H_depthplotcheckboxValueChanged(app, event)
            app.DepthPlot= app.H_depthplotcheckbox.Value;
            app.plotLayout
        end

        % Value changed function: H_accelplotcheckbox
        function H_accelplotcheckboxValueChanged(app, event)
            app.AccelPlot = app.H_accelplotcheckbox.Value;
            app.plotLayout
        end

        % Value changed function: H_tiltplotcheckbox
        function H_tiltplotcheckboxValueChanged(app, event)
            app.TiltPlot = app.H_tiltplotcheckbox.Value;
            app.plotLayout
        end

        % Button pushed function: H_quit
        function H_quitButtonPushed(app, event)
            app.H_figure_grid.ColumnWidth = {'0x', '.01x', '1x'};

            % Align X axes of all visibile plots
            % ------------------------------------
            app.xAlign
            
        end

        % Size changed function: H_Figure
        function H_FigureSizeChanged(app, event)
           % Align inner position left edge and width (x axis) of all 4 plots
           app.xAlign
        end

        % Button pushed function: Selection_ResetButton_2
        function Selection_ResetButton_2Pushed(app, event)
            delete(app.SP_VerticalLine);
            delete(app.HP_VerticalLine);
            delete(app.EP_VerticalLine);
            
            delete(app.SP_depthLine)
            delete(app.HP_depthLine)
            delete(app.EP_depthLine)
            
            delete(app.SP_accelLine)
            delete(app.HP_accelLine)
            delete(app.EP_accelLine)
            
            delete(app.SP_tiltLine)
            delete(app.HP_tiltLine)
            delete(app.EP_tiltLine)
            app.H.Selections.Value=app.H_Select.Items(1);
            
            app.H.Selections.Start_Pen.Value='';
            app.H.Selections.Start_Heat.Value='';
            app.H.Selections.End_Pen.Value='';
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
            app.H_figure_grid.ColumnWidth = {'1x', '0x', '8x'};

            % Align X axes of all visibile plots
            % ------------------------------------
            app.xAlign
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create H_Figure and hide until all components are created
            app.H_Figure = uifigure('Visible', 'off');
            app.H_Figure.AutoResizeChildren = 'off';
            app.H_Figure.Position = [100 100 1641 1101];
            app.H_Figure.Name = 'SlugPen';
            app.H_Figure.SizeChangedFcn = createCallbackFcn(app, @H_FigureSizeChanged, true);
            app.H_Figure.Scrollable = 'on';

            % Create H_figure_grid
            app.H_figure_grid = uigridlayout(app.H_Figure);
            app.H_figure_grid.ColumnWidth = {'1x', '0x', '9x'};
            app.H_figure_grid.RowHeight = {'1x'};
            app.H_figure_grid.ColumnSpacing = 0;
            app.H_figure_grid.Padding = [0 1.39999389648438 0 1.39999389648438];
            app.H_figure_grid.Scrollable = 'on';

            % Create H_DataPanel
            app.H_DataPanel = uipanel(app.H_figure_grid);
            app.H_DataPanel.AutoResizeChildren = 'off';
            app.H_DataPanel.BorderType = 'none';
            app.H_DataPanel.BackgroundColor = [0.8 0.8 0.8];
            app.H_DataPanel.Layout.Row = 1;
            app.H_DataPanel.Layout.Column = 1;

            % Create H_grid_data
            app.H_grid_data = uigridlayout(app.H_DataPanel);
            app.H_grid_data.RowHeight = {'fit', '0.15x', '0.55x', '0.7x', '0.3x', '1.1x', '0.3x'};
            app.H_grid_data.Padding = [0 0 0 0];
            app.H_grid_data.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create H_panel_create
            app.H_panel_create = uipanel(app.H_grid_data);
            app.H_panel_create.AutoResizeChildren = 'off';
            app.H_panel_create.ForegroundColor = [0 0.5373 0.4824];
            app.H_panel_create.BorderType = 'none';
            app.H_panel_create.TitlePosition = 'centertop';
            app.H_panel_create.Title = 'Output Controls';
            app.H_panel_create.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_panel_create.HandleVisibility = 'off';
            app.H_panel_create.Layout.Row = 7;
            app.H_panel_create.Layout.Column = [1 2];
            app.H_panel_create.FontName = 'Avenir Next';
            app.H_panel_create.FontWeight = 'bold';
            app.H_panel_create.Scrollable = 'on';
            app.H_panel_create.FontSize = 20;

            % Create H_grid_create
            app.H_grid_create = uigridlayout(app.H_panel_create);
            app.H_grid_create.ColumnWidth = {'1x'};
            app.H_grid_create.RowHeight = {'1x'};
            app.H_grid_create.RowSpacing = 8;
            app.H_grid_create.Padding = [10 8 10 8];
            app.H_grid_create.Scrollable = 'on';
            app.H_grid_create.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create H_export_pen
            app.H_export_pen = uibutton(app.H_grid_create, 'push');
            app.H_export_pen.ButtonPushedFcn = createCallbackFcn(app, @H_export_penButtonPushed, true);
            app.H_export_pen.BackgroundColor = [0 0.5373 0.4824];
            app.H_export_pen.FontName = 'Avenir Next';
            app.H_export_pen.FontSize = 20;
            app.H_export_pen.FontWeight = 'bold';
            app.H_export_pen.FontAngle = 'italic';
            app.H_export_pen.FontColor = [0.902 0.902 0.902];
            app.H_export_pen.Layout.Row = 1;
            app.H_export_pen.Layout.Column = 1;
            app.H_export_pen.Text = 'Create Penfile';

            % Create Panel
            app.Panel = uipanel(app.H_grid_data);
            app.Panel.BorderType = 'none';
            app.Panel.BackgroundColor = [0 0.3569 0.3098];
            app.Panel.Layout.Row = [1 3];
            app.Panel.Layout.Column = [1 2];

            % Create GridLayout
            app.GridLayout = uigridlayout(app.Panel);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'0.3x', '0.7x', '1.3x'};
            app.GridLayout.ColumnSpacing = 0;
            app.GridLayout.RowSpacing = 0;
            app.GridLayout.Padding = [15 15 15 15];
            app.GridLayout.BackgroundColor = [0 0.3569 0.3098];

            % Create H_quit
            app.H_quit = uibutton(app.GridLayout, 'push');
            app.H_quit.ButtonPushedFcn = createCallbackFcn(app, @H_quitButtonPushed, true);
            app.H_quit.Icon = fullfile(pathToMLAPP, 'Images', 'x .png');
            app.H_quit.BackgroundColor = [1 1 1];
            app.H_quit.FontName = 'Avenir';
            app.H_quit.FontSize = 14;
            app.H_quit.FontWeight = 'bold';
            app.H_quit.FontAngle = 'italic';
            app.H_quit.FontColor = [0 0.3569 0.3098];
            app.H_quit.Layout.Row = 1;
            app.H_quit.Layout.Column = 1;
            app.H_quit.Text = '';

            % Create H_restart
            app.H_restart = uibutton(app.GridLayout, 'push');
            app.H_restart.ButtonPushedFcn = createCallbackFcn(app, @H_restartButtonPushed, true);
            app.H_restart.BackgroundColor = [1 1 1];
            app.H_restart.FontName = 'Avenir';
            app.H_restart.FontSize = 14;
            app.H_restart.FontWeight = 'bold';
            app.H_restart.FontAngle = 'italic';
            app.H_restart.FontColor = [0 0.3569 0.3098];
            app.H_restart.Layout.Row = 1;
            app.H_restart.Layout.Column = 3;
            app.H_restart.Text = 'Restart';

            % Create Image2
            app.Image2 = uiimage(app.GridLayout);
            app.Image2.Layout.Row = 2;
            app.Image2.Layout.Column = [1 3];
            app.Image2.ImageSource = fullfile(pathToMLAPP, 'Images', 'SlugPenLogo.png');

            % Create Image
            app.Image = uiimage(app.GridLayout);
            app.Image.Layout.Row = 3;
            app.Image.Layout.Column = [1 3];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'Images', 'UCSC-HydrogeologyLogo.jpg');

            % Create H_panel_info
            app.H_panel_info = uipanel(app.H_grid_data);
            app.H_panel_info.AutoResizeChildren = 'off';
            app.H_panel_info.ForegroundColor = [0 0.5373 0.4824];
            app.H_panel_info.BorderType = 'none';
            app.H_panel_info.TitlePosition = 'centertop';
            app.H_panel_info.Title = 'Raw Data Information';
            app.H_panel_info.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_panel_info.Layout.Row = 4;
            app.H_panel_info.Layout.Column = [1 2];
            app.H_panel_info.FontName = 'Avenir Next';
            app.H_panel_info.FontWeight = 'bold';
            app.H_panel_info.Scrollable = 'on';
            app.H_panel_info.FontSize = 20;

            % Create H_grid_datainfo
            app.H_grid_datainfo = uigridlayout(app.H_panel_info);
            app.H_grid_datainfo.ColumnWidth = {'1x', '1x', '1x'};
            app.H_grid_datainfo.RowHeight = {'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit', 'fit'};
            app.H_grid_datainfo.ColumnSpacing = 9.66666666666667;
            app.H_grid_datainfo.RowSpacing = 3;
            app.H_grid_datainfo.Padding = [9.66666666666667 9.095703125 9.66666666666667 8];
            app.H_grid_datainfo.Scrollable = 'on';
            app.H_grid_datainfo.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create FilenameLabel
            app.FilenameLabel = uilabel(app.H_grid_datainfo);
            app.FilenameLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.FilenameLabel.FontName = 'Avenir Next';
            app.FilenameLabel.FontSize = 14;
            app.FilenameLabel.FontWeight = 'bold';
            app.FilenameLabel.FontColor = [0.502 0.502 0.502];
            app.FilenameLabel.Layout.Row = 2;
            app.FilenameLabel.Layout.Column = [1 2];
            app.FilenameLabel.Text = 'Filename: ';

            % Create H_filename
            app.H_filename = uieditfield(app.H_grid_datainfo, 'text');
            app.H_filename.HorizontalAlignment = 'center';
            app.H_filename.FontName = 'Avenir Next';
            app.H_filename.FontColor = [0.149 0.149 0.149];
            app.H_filename.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_filename.Layout.Row = 3;
            app.H_filename.Layout.Column = [1 3];

            % Create StartDateEditFieldLabel
            app.StartDateEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.StartDateEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.StartDateEditFieldLabel.FontName = 'Avenir Next';
            app.StartDateEditFieldLabel.FontSize = 14;
            app.StartDateEditFieldLabel.FontWeight = 'bold';
            app.StartDateEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.StartDateEditFieldLabel.Layout.Row = 4;
            app.StartDateEditFieldLabel.Layout.Column = [1 2];
            app.StartDateEditFieldLabel.Text = 'Start Date:';

            % Create H_start_date
            app.H_start_date = uieditfield(app.H_grid_datainfo, 'text');
            app.H_start_date.HorizontalAlignment = 'center';
            app.H_start_date.FontName = 'Avenir Next';
            app.H_start_date.FontColor = [0.149 0.149 0.149];
            app.H_start_date.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_start_date.Layout.Row = 5;
            app.H_start_date.Layout.Column = [1 3];

            % Create StartTimeEditFieldLabel
            app.StartTimeEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.StartTimeEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.StartTimeEditFieldLabel.FontName = 'Avenir Next';
            app.StartTimeEditFieldLabel.FontSize = 14;
            app.StartTimeEditFieldLabel.FontWeight = 'bold';
            app.StartTimeEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.StartTimeEditFieldLabel.Layout.Row = 6;
            app.StartTimeEditFieldLabel.Layout.Column = [1 2];
            app.StartTimeEditFieldLabel.Text = 'Start Time:';

            % Create H_start_time
            app.H_start_time = uieditfield(app.H_grid_datainfo, 'text');
            app.H_start_time.HorizontalAlignment = 'center';
            app.H_start_time.FontName = 'Apple Braille';
            app.H_start_time.FontColor = [0.149 0.149 0.149];
            app.H_start_time.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_start_time.Layout.Row = 7;
            app.H_start_time.Layout.Column = [1 3];

            % Create EndTimeEditFieldLabel
            app.EndTimeEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.EndTimeEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EndTimeEditFieldLabel.FontName = 'Avenir Next';
            app.EndTimeEditFieldLabel.FontSize = 14;
            app.EndTimeEditFieldLabel.FontWeight = 'bold';
            app.EndTimeEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.EndTimeEditFieldLabel.Layout.Row = 8;
            app.EndTimeEditFieldLabel.Layout.Column = [1 2];
            app.EndTimeEditFieldLabel.Text = 'End Time:';

            % Create H_end_time
            app.H_end_time = uieditfield(app.H_grid_datainfo, 'text');
            app.H_end_time.HorizontalAlignment = 'center';
            app.H_end_time.FontName = 'Apple Braille';
            app.H_end_time.FontColor = [0.149 0.149 0.149];
            app.H_end_time.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_end_time.Layout.Row = 9;
            app.H_end_time.Layout.Column = [1 3];

            % Create LogIntervalsLabel
            app.LogIntervalsLabel = uilabel(app.H_grid_datainfo);
            app.LogIntervalsLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LogIntervalsLabel.FontName = 'Avenir Next';
            app.LogIntervalsLabel.FontSize = 14;
            app.LogIntervalsLabel.FontWeight = 'bold';
            app.LogIntervalsLabel.FontColor = [0.502 0.502 0.502];
            app.LogIntervalsLabel.Layout.Row = 12;
            app.LogIntervalsLabel.Layout.Column = [1 2];
            app.LogIntervalsLabel.Text = 'Log Interval (s):';

            % Create H_logint
            app.H_logint = uieditfield(app.H_grid_datainfo, 'text');
            app.H_logint.HorizontalAlignment = 'center';
            app.H_logint.FontName = 'Avenir Next';
            app.H_logint.FontColor = [0.149 0.149 0.149];
            app.H_logint.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_logint.Layout.Row = 13;
            app.H_logint.Layout.Column = [1 3];

            % Create PulsesecEditFieldLabel
            app.PulsesecEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.PulsesecEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PulsesecEditFieldLabel.FontName = 'Avenir Next';
            app.PulsesecEditFieldLabel.FontSize = 14;
            app.PulsesecEditFieldLabel.FontWeight = 'bold';
            app.PulsesecEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.PulsesecEditFieldLabel.Layout.Row = 14;
            app.PulsesecEditFieldLabel.Layout.Column = [1 2];
            app.PulsesecEditFieldLabel.Text = 'Pulse (sec): ';

            % Create H_pulse_s
            app.H_pulse_s = uieditfield(app.H_grid_datainfo, 'text');
            app.H_pulse_s.HorizontalAlignment = 'center';
            app.H_pulse_s.FontName = 'Avenir Next';
            app.H_pulse_s.FontColor = [0.149 0.149 0.149];
            app.H_pulse_s.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_pulse_s.Layout.Row = 15;
            app.H_pulse_s.Layout.Column = [1 3];

            % Create DecayminEditFieldLabel
            app.DecayminEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.DecayminEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DecayminEditFieldLabel.FontName = 'Avenir Next';
            app.DecayminEditFieldLabel.FontSize = 14;
            app.DecayminEditFieldLabel.FontWeight = 'bold';
            app.DecayminEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.DecayminEditFieldLabel.Layout.Row = 18;
            app.DecayminEditFieldLabel.Layout.Column = [1 2];
            app.DecayminEditFieldLabel.Text = 'Decay (min):';

            % Create H_decay
            app.H_decay = uieditfield(app.H_grid_datainfo, 'text');
            app.H_decay.HorizontalAlignment = 'center';
            app.H_decay.FontName = 'Avenir Next';
            app.H_decay.FontColor = [0.149 0.149 0.149];
            app.H_decay.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_decay.Layout.Row = 19;
            app.H_decay.Layout.Column = [1 3];

            % Create PulseWLabel
            app.PulseWLabel = uilabel(app.H_grid_datainfo);
            app.PulseWLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PulseWLabel.FontName = 'Avenir Next';
            app.PulseWLabel.FontSize = 14;
            app.PulseWLabel.FontWeight = 'bold';
            app.PulseWLabel.FontColor = [0.502 0.502 0.502];
            app.PulseWLabel.Layout.Row = 16;
            app.PulseWLabel.Layout.Column = [1 2];
            app.PulseWLabel.Text = 'Pulse (W): ';

            % Create H_pulse_W
            app.H_pulse_W = uieditfield(app.H_grid_datainfo, 'text');
            app.H_pulse_W.HorizontalAlignment = 'center';
            app.H_pulse_W.FontName = 'Apple Braille';
            app.H_pulse_W.FontColor = [0.149 0.149 0.149];
            app.H_pulse_W.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_pulse_W.Layout.Row = 17;
            app.H_pulse_W.Layout.Column = [1 3];

            % Create H_load
            app.H_load = uibutton(app.H_grid_datainfo, 'push');
            app.H_load.ButtonPushedFcn = createCallbackFcn(app, @H_loadPushed, true);
            app.H_load.BackgroundColor = [0 0.5373 0.4824];
            app.H_load.FontName = 'Avenir Next';
            app.H_load.FontSize = 18;
            app.H_load.FontWeight = 'bold';
            app.H_load.FontAngle = 'italic';
            app.H_load.FontColor = [0.902 0.902 0.902];
            app.H_load.Layout.Row = 1;
            app.H_load.Layout.Column = [1 3];
            app.H_load.Text = 'Load Raw Data';

            % Create EditField_3
            app.EditField_3 = uieditfield(app.H_grid_datainfo, 'numeric');
            app.EditField_3.Layout.Row = 22;
            app.EditField_3.Layout.Column = 3;

            % Create EditField_2
            app.EditField_2 = uieditfield(app.H_grid_datainfo, 'numeric');
            app.EditField_2.Layout.Row = 22;
            app.EditField_2.Layout.Column = 2;

            % Create NumberofThermistorsLabel
            app.NumberofThermistorsLabel = uilabel(app.H_grid_datainfo);
            app.NumberofThermistorsLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.NumberofThermistorsLabel.FontName = 'Avenir Next';
            app.NumberofThermistorsLabel.FontSize = 14;
            app.NumberofThermistorsLabel.FontWeight = 'bold';
            app.NumberofThermistorsLabel.FontColor = [0.502 0.502 0.502];
            app.NumberofThermistorsLabel.Layout.Row = 10;
            app.NumberofThermistorsLabel.Layout.Column = [1 3];
            app.NumberofThermistorsLabel.Text = 'Number of Thermistors:';

            % Create edit_NumberofTherm
            app.edit_NumberofTherm = uieditfield(app.H_grid_datainfo, 'text');
            app.edit_NumberofTherm.HorizontalAlignment = 'center';
            app.edit_NumberofTherm.FontName = 'Apple Braille';
            app.edit_NumberofTherm.FontColor = [0.149 0.149 0.149];
            app.edit_NumberofTherm.BackgroundColor = [0.9412 0.9412 0.9412];
            app.edit_NumberofTherm.Layout.Row = 11;
            app.edit_NumberofTherm.Layout.Column = [1 3];

            % Create label_FilterWinfowLength
            app.label_FilterWinfowLength = uilabel(app.H_grid_datainfo);
            app.label_FilterWinfowLength.FontName = 'Avenir Next';
            app.label_FilterWinfowLength.FontSize = 14;
            app.label_FilterWinfowLength.FontWeight = 'bold';
            app.label_FilterWinfowLength.FontColor = [0.502 0.502 0.502];
            app.label_FilterWinfowLength.Layout.Row = 20;
            app.label_FilterWinfowLength.Layout.Column = [1 3];
            app.label_FilterWinfowLength.Text = 'Filter Window Lengths:';

            % Create MedianEditFieldLabel
            app.MedianEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.MedianEditFieldLabel.FontName = 'Avenir Next';
            app.MedianEditFieldLabel.FontWeight = 'bold';
            app.MedianEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.MedianEditFieldLabel.Layout.Row = 21;
            app.MedianEditFieldLabel.Layout.Column = 1;
            app.MedianEditFieldLabel.Text = 'Median:';

            % Create edit_MedianFilter
            app.edit_MedianFilter = uieditfield(app.H_grid_datainfo, 'numeric');
            app.edit_MedianFilter.HorizontalAlignment = 'center';
            app.edit_MedianFilter.FontName = 'Avenir Next';
            app.edit_MedianFilter.FontColor = [0.149 0.149 0.149];
            app.edit_MedianFilter.BackgroundColor = [0.9412 0.9412 0.9412];
            app.edit_MedianFilter.Layout.Row = 22;
            app.edit_MedianFilter.Layout.Column = 1;
            app.edit_MedianFilter.Value = 2;

            % Create MeanEditFieldLabel
            app.MeanEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.MeanEditFieldLabel.FontName = 'Avenir Next';
            app.MeanEditFieldLabel.FontWeight = 'bold';
            app.MeanEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.MeanEditFieldLabel.Layout.Row = 21;
            app.MeanEditFieldLabel.Layout.Column = 2;
            app.MeanEditFieldLabel.Text = 'Mean: ';

            % Create edit_MeanFilter
            app.edit_MeanFilter = uieditfield(app.H_grid_datainfo, 'numeric');
            app.edit_MeanFilter.HorizontalAlignment = 'center';
            app.edit_MeanFilter.FontName = 'Avenir Next';
            app.edit_MeanFilter.FontColor = [0.149 0.149 0.149];
            app.edit_MeanFilter.BackgroundColor = [0.9412 0.9412 0.9412];
            app.edit_MeanFilter.Layout.Row = 22;
            app.edit_MeanFilter.Layout.Column = 2;
            app.edit_MeanFilter.Value = 6;

            % Create DecimateEditFieldLabel
            app.DecimateEditFieldLabel = uilabel(app.H_grid_datainfo);
            app.DecimateEditFieldLabel.FontName = 'Avenir Next';
            app.DecimateEditFieldLabel.FontWeight = 'bold';
            app.DecimateEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.DecimateEditFieldLabel.Layout.Row = 21;
            app.DecimateEditFieldLabel.Layout.Column = 3;
            app.DecimateEditFieldLabel.Text = 'Decimate:';

            % Create edit_DecimateFilter
            app.edit_DecimateFilter = uieditfield(app.H_grid_datainfo, 'numeric');
            app.edit_DecimateFilter.HorizontalAlignment = 'center';
            app.edit_DecimateFilter.FontColor = [0.149 0.149 0.149];
            app.edit_DecimateFilter.BackgroundColor = [0.9412 0.9412 0.9412];
            app.edit_DecimateFilter.Layout.Row = 22;
            app.edit_DecimateFilter.Layout.Column = 3;
            app.edit_DecimateFilter.Value = 10;

            % Create H_panel_plotcontrols
            app.H_panel_plotcontrols = uipanel(app.H_grid_data);
            app.H_panel_plotcontrols.AutoResizeChildren = 'off';
            app.H_panel_plotcontrols.ForegroundColor = [0 0.5373 0.4824];
            app.H_panel_plotcontrols.BorderType = 'none';
            app.H_panel_plotcontrols.TitlePosition = 'centertop';
            app.H_panel_plotcontrols.Title = 'Plot Controls';
            app.H_panel_plotcontrols.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_panel_plotcontrols.Layout.Row = 5;
            app.H_panel_plotcontrols.Layout.Column = [1 2];
            app.H_panel_plotcontrols.FontName = 'Avenir Next';
            app.H_panel_plotcontrols.FontWeight = 'bold';
            app.H_panel_plotcontrols.Scrollable = 'on';
            app.H_panel_plotcontrols.FontSize = 20;

            % Create H_grid_plotcontrols
            app.H_grid_plotcontrols = uigridlayout(app.H_panel_plotcontrols);
            app.H_grid_plotcontrols.ColumnWidth = {'100x', '100x'};
            app.H_grid_plotcontrols.RowHeight = {'fit', 'fit', 'fit', 'fit'};
            app.H_grid_plotcontrols.RowSpacing = 3.375;
            app.H_grid_plotcontrols.Padding = [10 3.375 10 3.375];
            app.H_grid_plotcontrols.Scrollable = 'on';
            app.H_grid_plotcontrols.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create PlotsLabel
            app.PlotsLabel = uilabel(app.H_grid_plotcontrols);
            app.PlotsLabel.FontName = 'Avenir Next';
            app.PlotsLabel.FontSize = 16;
            app.PlotsLabel.FontWeight = 'bold';
            app.PlotsLabel.FontColor = [0.502 0.502 0.502];
            app.PlotsLabel.Layout.Row = 1;
            app.PlotsLabel.Layout.Column = 1;
            app.PlotsLabel.Text = 'Plots:';

            % Create DataLabel
            app.DataLabel = uilabel(app.H_grid_plotcontrols);
            app.DataLabel.FontName = 'Avenir Next';
            app.DataLabel.FontSize = 16;
            app.DataLabel.FontWeight = 'bold';
            app.DataLabel.FontColor = [0.502 0.502 0.502];
            app.DataLabel.Layout.Row = 1;
            app.DataLabel.Layout.Column = 2;
            app.DataLabel.Text = 'Data:';

            % Create H_depthplotcheckbox
            app.H_depthplotcheckbox = uicheckbox(app.H_grid_plotcontrols);
            app.H_depthplotcheckbox.ValueChangedFcn = createCallbackFcn(app, @H_depthplotcheckboxValueChanged, true);
            app.H_depthplotcheckbox.Text = 'Depth';
            app.H_depthplotcheckbox.FontName = 'Avenir Next';
            app.H_depthplotcheckbox.FontSize = 16;
            app.H_depthplotcheckbox.Layout.Row = 2;
            app.H_depthplotcheckbox.Layout.Column = 1;

            % Create H_rawp
            app.H_rawp = uicheckbox(app.H_grid_plotcontrols);
            app.H_rawp.ValueChangedFcn = createCallbackFcn(app, @H_rawpValueChanged, true);
            app.H_rawp.Text = 'Raw';
            app.H_rawp.FontName = 'Avenir Next';
            app.H_rawp.FontSize = 16;
            app.H_rawp.Layout.Row = 2;
            app.H_rawp.Layout.Column = 2;

            % Create H_accelplotcheckbox
            app.H_accelplotcheckbox = uicheckbox(app.H_grid_plotcontrols);
            app.H_accelplotcheckbox.ValueChangedFcn = createCallbackFcn(app, @H_accelplotcheckboxValueChanged, true);
            app.H_accelplotcheckbox.Text = 'Acceleration';
            app.H_accelplotcheckbox.FontName = 'Avenir Next';
            app.H_accelplotcheckbox.FontSize = 16;
            app.H_accelplotcheckbox.Layout.Row = 3;
            app.H_accelplotcheckbox.Layout.Column = 1;

            % Create H_clnp
            app.H_clnp = uicheckbox(app.H_grid_plotcontrols);
            app.H_clnp.ValueChangedFcn = createCallbackFcn(app, @H_clnpValueChanged, true);
            app.H_clnp.Text = 'Clean';
            app.H_clnp.FontName = 'Avenir Next';
            app.H_clnp.FontSize = 16;
            app.H_clnp.Layout.Row = 3;
            app.H_clnp.Layout.Column = 2;

            % Create H_tiltplotcheckbox
            app.H_tiltplotcheckbox = uicheckbox(app.H_grid_plotcontrols);
            app.H_tiltplotcheckbox.ValueChangedFcn = createCallbackFcn(app, @H_tiltplotcheckboxValueChanged, true);
            app.H_tiltplotcheckbox.Text = 'Tilt';
            app.H_tiltplotcheckbox.FontName = 'Arial';
            app.H_tiltplotcheckbox.FontSize = 16;
            app.H_tiltplotcheckbox.Layout.Row = 4;
            app.H_tiltplotcheckbox.Layout.Column = 1;

            % Create H_decp
            app.H_decp = uicheckbox(app.H_grid_plotcontrols);
            app.H_decp.ValueChangedFcn = createCallbackFcn(app, @H_decpValueChanged, true);
            app.H_decp.Text = 'Decimate';
            app.H_decp.FontName = 'Arial';
            app.H_decp.FontSize = 16;
            app.H_decp.Layout.Row = 4;
            app.H_decp.Layout.Column = 2;

            % Create H_panel_selected
            app.H_panel_selected = uipanel(app.H_grid_data);
            app.H_panel_selected.AutoResizeChildren = 'off';
            app.H_panel_selected.ForegroundColor = [0 0.5373 0.4824];
            app.H_panel_selected.BorderType = 'none';
            app.H_panel_selected.TitlePosition = 'centertop';
            app.H_panel_selected.Title = 'Selections Information';
            app.H_panel_selected.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_panel_selected.HandleVisibility = 'off';
            app.H_panel_selected.Layout.Row = 6;
            app.H_panel_selected.Layout.Column = [1 2];
            app.H_panel_selected.FontName = 'Avenir Next';
            app.H_panel_selected.FontWeight = 'bold';
            app.H_panel_selected.Scrollable = 'on';
            app.H_panel_selected.FontSize = 20;

            % Create H_grid_selected
            app.H_grid_selected = uigridlayout(app.H_panel_selected);
            app.H_grid_selected.ColumnWidth = {'3x', '2x'};
            app.H_grid_selected.RowHeight = {'1.5x', '1.5x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1.5x', '1.5x', '1.5x'};
            app.H_grid_selected.RowSpacing = 5;
            app.H_grid_selected.Padding = [10 10 10 8];
            app.H_grid_selected.Scrollable = 'on';
            app.H_grid_selected.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create H_Select
            app.H_Select = uidropdown(app.H_grid_selected);
            app.H_Select.Items = {'Start Equilibrium (W1)', 'End Equilibrium (W2)', 'Start Penetration (P)', 'End Penetration (E)', 'Heat Pulse (H)'};
            app.H_Select.ValueChangedFcn = createCallbackFcn(app, @H_SelectValueChanged, true);
            app.H_Select.Tooltip = {'Click to graphically select data for creating penfile'};
            app.H_Select.FontName = 'Avenir Next';
            app.H_Select.FontSize = 16;
            app.H_Select.FontWeight = 'bold';
            app.H_Select.FontAngle = 'italic';
            app.H_Select.FontColor = [0.902 0.902 0.902];
            app.H_Select.BackgroundColor = [0 0.5373 0.4824];
            app.H_Select.Layout.Row = 1;
            app.H_Select.Layout.Column = [1 2];
            app.H_Select.Value = 'Start Equilibrium (W1)';

            % Create StartEquilibriumW1EditFieldLabel
            app.StartEquilibriumW1EditFieldLabel = uilabel(app.H_grid_selected);
            app.StartEquilibriumW1EditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.StartEquilibriumW1EditFieldLabel.FontName = 'Avenir Next';
            app.StartEquilibriumW1EditFieldLabel.FontSize = 14;
            app.StartEquilibriumW1EditFieldLabel.FontWeight = 'bold';
            app.StartEquilibriumW1EditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.StartEquilibriumW1EditFieldLabel.Layout.Row = 3;
            app.StartEquilibriumW1EditFieldLabel.Layout.Column = [1 2];
            app.StartEquilibriumW1EditFieldLabel.Text = 'Start Equilibrium (W1): ';

            % Create H_StartEqm
            app.H_StartEqm = uieditfield(app.H_grid_selected, 'text');
            app.H_StartEqm.ValueChangedFcn = createCallbackFcn(app, @H_StartEqmValueChanged, true);
            app.H_StartEqm.HorizontalAlignment = 'center';
            app.H_StartEqm.FontName = 'Arial';
            app.H_StartEqm.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_StartEqm.Layout.Row = 4;
            app.H_StartEqm.Layout.Column = 1;

            % Create EndEquilibriumW2EditFieldLabel
            app.EndEquilibriumW2EditFieldLabel = uilabel(app.H_grid_selected);
            app.EndEquilibriumW2EditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EndEquilibriumW2EditFieldLabel.FontName = 'Avenir Next';
            app.EndEquilibriumW2EditFieldLabel.FontSize = 14;
            app.EndEquilibriumW2EditFieldLabel.FontWeight = 'bold';
            app.EndEquilibriumW2EditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.EndEquilibriumW2EditFieldLabel.Layout.Row = 5;
            app.EndEquilibriumW2EditFieldLabel.Layout.Column = [1 2];
            app.EndEquilibriumW2EditFieldLabel.Text = 'End Equilibrium (W2): ';

            % Create H_EndEqm
            app.H_EndEqm = uieditfield(app.H_grid_selected, 'text');
            app.H_EndEqm.HorizontalAlignment = 'center';
            app.H_EndEqm.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_EndEqm.Layout.Row = 6;
            app.H_EndEqm.Layout.Column = 1;

            % Create StartPenetrationPEditFieldLabel
            app.StartPenetrationPEditFieldLabel = uilabel(app.H_grid_selected);
            app.StartPenetrationPEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.StartPenetrationPEditFieldLabel.FontName = 'Avenir Next';
            app.StartPenetrationPEditFieldLabel.FontSize = 14;
            app.StartPenetrationPEditFieldLabel.FontWeight = 'bold';
            app.StartPenetrationPEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.StartPenetrationPEditFieldLabel.Layout.Row = 7;
            app.StartPenetrationPEditFieldLabel.Layout.Column = [1 2];
            app.StartPenetrationPEditFieldLabel.Text = 'Start Penetration (P): ';

            % Create H_Pen
            app.H_Pen = uieditfield(app.H_grid_selected, 'text');
            app.H_Pen.HorizontalAlignment = 'center';
            app.H_Pen.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_Pen.Layout.Row = 8;
            app.H_Pen.Layout.Column = 1;

            % Create HeatPulseHEditFieldLabel
            app.HeatPulseHEditFieldLabel = uilabel(app.H_grid_selected);
            app.HeatPulseHEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.HeatPulseHEditFieldLabel.FontName = 'Avenir Next';
            app.HeatPulseHEditFieldLabel.FontSize = 14;
            app.HeatPulseHEditFieldLabel.FontWeight = 'bold';
            app.HeatPulseHEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.HeatPulseHEditFieldLabel.Layout.Row = 11;
            app.HeatPulseHEditFieldLabel.Layout.Column = [1 2];
            app.HeatPulseHEditFieldLabel.Text = 'Heat Pulse (H): ';

            % Create H_Heat
            app.H_Heat = uieditfield(app.H_grid_selected, 'text');
            app.H_Heat.HorizontalAlignment = 'center';
            app.H_Heat.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_Heat.Layout.Row = 12;
            app.H_Heat.Layout.Column = 1;

            % Create EndPenetrationEEditFieldLabel
            app.EndPenetrationEEditFieldLabel = uilabel(app.H_grid_selected);
            app.EndPenetrationEEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EndPenetrationEEditFieldLabel.FontName = 'Avenir Next';
            app.EndPenetrationEEditFieldLabel.FontSize = 14;
            app.EndPenetrationEEditFieldLabel.FontWeight = 'bold';
            app.EndPenetrationEEditFieldLabel.FontColor = [0.502 0.502 0.502];
            app.EndPenetrationEEditFieldLabel.Layout.Row = 9;
            app.EndPenetrationEEditFieldLabel.Layout.Column = [1 2];
            app.EndPenetrationEEditFieldLabel.Text = 'End Penetration (E): ';

            % Create H_End
            app.H_End = uieditfield(app.H_grid_selected, 'text');
            app.H_End.HorizontalAlignment = 'center';
            app.H_End.BackgroundColor = [0.9412 0.9412 0.9412];
            app.H_End.Layout.Row = 10;
            app.H_End.Layout.Column = 1;

            % Create Selection_ResetButton
            app.Selection_ResetButton = uibutton(app.H_grid_selected, 'push');
            app.Selection_ResetButton.ButtonPushedFcn = createCallbackFcn(app, @Selection_ResetButtonPushed, true);
            app.Selection_ResetButton.BackgroundColor = [0 0.5373 0.4824];
            app.Selection_ResetButton.FontName = 'Avenir Next';
            app.Selection_ResetButton.FontSize = 16;
            app.Selection_ResetButton.FontWeight = 'bold';
            app.Selection_ResetButton.FontAngle = 'italic';
            app.Selection_ResetButton.FontColor = [0.902 0.902 0.902];
            app.Selection_ResetButton.Layout.Row = 15;
            app.Selection_ResetButton.Layout.Column = [1 2];
            app.Selection_ResetButton.Text = 'Reset All';

            % Create Selection_BeginButton
            app.Selection_BeginButton = uibutton(app.H_grid_selected, 'push');
            app.Selection_BeginButton.ButtonPushedFcn = createCallbackFcn(app, @Selection_BeginButtonButtonPushed, true);
            app.Selection_BeginButton.BackgroundColor = [0 0.5373 0.4824];
            app.Selection_BeginButton.FontName = 'Avenir Next';
            app.Selection_BeginButton.FontSize = 16;
            app.Selection_BeginButton.FontWeight = 'bold';
            app.Selection_BeginButton.FontAngle = 'italic';
            app.Selection_BeginButton.FontColor = [0.902 0.902 0.902];
            app.Selection_BeginButton.Layout.Row = 2;
            app.Selection_BeginButton.Layout.Column = 1;
            app.Selection_BeginButton.Text = 'Select Event';

            % Create H_nextpenetration
            app.H_nextpenetration = uibutton(app.H_grid_selected, 'push');
            app.H_nextpenetration.ButtonPushedFcn = createCallbackFcn(app, @H_nextpenetrationPushed, true);
            app.H_nextpenetration.BackgroundColor = [0 0.5373 0.4824];
            app.H_nextpenetration.FontName = 'Avenir Next';
            app.H_nextpenetration.FontSize = 16;
            app.H_nextpenetration.FontWeight = 'bold';
            app.H_nextpenetration.FontAngle = 'italic';
            app.H_nextpenetration.FontColor = [0.902 0.902 0.902];
            app.H_nextpenetration.Layout.Row = 13;
            app.H_nextpenetration.Layout.Column = [1 2];
            app.H_nextpenetration.Text = 'Set Penetration';

            % Create Selection_ResetButton_2
            app.Selection_ResetButton_2 = uibutton(app.H_grid_selected, 'push');
            app.Selection_ResetButton_2.ButtonPushedFcn = createCallbackFcn(app, @Selection_ResetButton_2Pushed, true);
            app.Selection_ResetButton_2.BackgroundColor = [0 0.5373 0.4824];
            app.Selection_ResetButton_2.FontName = 'Avenir Next';
            app.Selection_ResetButton_2.FontSize = 16;
            app.Selection_ResetButton_2.FontWeight = 'bold';
            app.Selection_ResetButton_2.FontAngle = 'italic';
            app.Selection_ResetButton_2.FontColor = [0.902 0.902 0.902];
            app.Selection_ResetButton_2.Layout.Row = 14;
            app.Selection_ResetButton_2.Layout.Column = [1 2];
            app.Selection_ResetButton_2.Text = 'Reset Penetration';

            % Create H_PlotPanel
            app.H_PlotPanel = uipanel(app.H_figure_grid);
            app.H_PlotPanel.AutoResizeChildren = 'off';
            app.H_PlotPanel.BorderType = 'none';
            app.H_PlotPanel.Layout.Row = 1;
            app.H_PlotPanel.Layout.Column = 3;
            app.H_PlotPanel.Scrollable = 'on';

            % Create H_plot_grid
            app.H_plot_grid = uigridlayout(app.H_PlotPanel);
            app.H_plot_grid.ColumnWidth = {'0.011x', '1x', 65};
            app.H_plot_grid.RowHeight = {'0.2x', '0.27x', '5x', '1x', '1x', '1x', '0.2x', '0.2x'};
            app.H_plot_grid.ColumnSpacing = 0;
            app.H_plot_grid.RowSpacing = 0;
            app.H_plot_grid.Padding = [0 0 0 0];
            app.H_plot_grid.Scrollable = 'on';
            app.H_plot_grid.BackgroundColor = [0.8 0.8 0.8];

            % Create H_axis_tilt
            app.H_axis_tilt = uiaxes(app.H_plot_grid);
            ylabel(app.H_axis_tilt, 'Tilt (°)')
            app.H_axis_tilt.FontWeight = 'bold';
            app.H_axis_tilt.XTickLabelRotation = 0;
            app.H_axis_tilt.YTickLabelRotation = 0;
            app.H_axis_tilt.ZTickLabelRotation = 0;
            app.H_axis_tilt.Color = [0.9412 0.9412 0.9412];
            app.H_axis_tilt.FontSize = 14;
            app.H_axis_tilt.TitleFontSizeMultiplier = 1;
            app.H_axis_tilt.Box = 'on';
            app.H_axis_tilt.Layout.Row = 6;
            app.H_axis_tilt.Layout.Column = 2;

            % Create H_axis_accel
            app.H_axis_accel = uiaxes(app.H_plot_grid);
            ylabel(app.H_axis_accel, 'Acceleration (g)')
            app.H_axis_accel.FontWeight = 'bold';
            app.H_axis_accel.XTickLabelRotation = 0;
            app.H_axis_accel.YTickLabelRotation = 0;
            app.H_axis_accel.ZTickLabelRotation = 0;
            app.H_axis_accel.Color = [0.9412 0.9412 0.9412];
            app.H_axis_accel.FontSize = 14;
            app.H_axis_accel.TitleFontSizeMultiplier = 1;
            app.H_axis_accel.Box = 'on';
            app.H_axis_accel.Layout.Row = 5;
            app.H_axis_accel.Layout.Column = 2;

            % Create H_axis_depth
            app.H_axis_depth = uiaxes(app.H_plot_grid);
            ylabel(app.H_axis_depth, 'Depth (m-FW)')
            app.H_axis_depth.FontWeight = 'bold';
            app.H_axis_depth.XTick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
            app.H_axis_depth.XTickLabelRotation = 0;
            app.H_axis_depth.YTickLabelRotation = 0;
            app.H_axis_depth.ZTickLabelRotation = 0;
            app.H_axis_depth.Color = [0.9412 0.9412 0.9412];
            app.H_axis_depth.FontSize = 14;
            app.H_axis_depth.TitleFontSizeMultiplier = 1;
            app.H_axis_depth.Box = 'on';
            app.H_axis_depth.Layout.Row = 4;
            app.H_axis_depth.Layout.Column = 2;

            % Create H_axis_raw
            app.H_axis_raw = uiaxes(app.H_plot_grid);
            title(app.H_axis_raw, 'Time Series')
            ylabel(app.H_axis_raw, 'Temperature (°C)')
            app.H_axis_raw.FontWeight = 'bold';
            app.H_axis_raw.XTickLabelRotation = 0;
            app.H_axis_raw.YTickLabelRotation = 0;
            app.H_axis_raw.ZTickLabelRotation = 0;
            app.H_axis_raw.Color = [0.9412 0.9412 0.9412];
            app.H_axis_raw.FontSize = 16;
            app.H_axis_raw.Box = 'on';
            app.H_axis_raw.Layout.Row = 3;
            app.H_axis_raw.Layout.Column = 2;

            % Create TimeminsLabel
            app.TimeminsLabel = uilabel(app.H_plot_grid);
            app.TimeminsLabel.HorizontalAlignment = 'center';
            app.TimeminsLabel.FontSize = 16;
            app.TimeminsLabel.FontWeight = 'bold';
            app.TimeminsLabel.Layout.Row = 7;
            app.TimeminsLabel.Layout.Column = 2;
            app.TimeminsLabel.Text = 'Time (min:s)';

            % Create Panel_2
            app.Panel_2 = uipanel(app.H_plot_grid);
            app.Panel_2.BorderType = 'none';
            app.Panel_2.BackgroundColor = [0 0.5373 0.4824];
            app.Panel_2.Layout.Row = 2;
            app.Panel_2.Layout.Column = [1 3];

            % Create grid_TopLabels
            app.grid_TopLabels = uigridlayout(app.Panel_2);
            app.grid_TopLabels.ColumnWidth = {'fit', '1x', '0.5x', '0.3x', '0.5x', '1x', '1x'};
            app.grid_TopLabels.RowHeight = {'1x'};
            app.grid_TopLabels.Padding = [10 0 10 0];
            app.grid_TopLabels.BackgroundColor = [0 0.5373 0.4824];

            % Create label_SlugHeat
            app.label_SlugHeat = uilabel(app.grid_TopLabels);
            app.label_SlugHeat.HorizontalAlignment = 'right';
            app.label_SlugHeat.FontName = 'Apple Braille';
            app.label_SlugHeat.FontSize = 18;
            app.label_SlugHeat.FontWeight = 'bold';
            app.label_SlugHeat.FontAngle = 'italic';
            app.label_SlugHeat.FontColor = [0.902 0.902 0.902];
            app.label_SlugHeat.Layout.Row = 1;
            app.label_SlugHeat.Layout.Column = 7;
            app.label_SlugHeat.Text = 'SlugPen';

            % Create label_CurrentPath
            app.label_CurrentPath = uilabel(app.grid_TopLabels);
            app.label_CurrentPath.FontName = 'Avenir Next';
            app.label_CurrentPath.FontSize = 14;
            app.label_CurrentPath.FontWeight = 'bold';
            app.label_CurrentPath.FontAngle = 'italic';
            app.label_CurrentPath.FontColor = [0.902 0.902 0.902];
            app.label_CurrentPath.Layout.Row = 1;
            app.label_CurrentPath.Layout.Column = 1;
            app.label_CurrentPath.Text = 'Current Path:';

            % Create label_currentpathfull
            app.label_currentpathfull = uilabel(app.grid_TopLabels);
            app.label_currentpathfull.WordWrap = 'on';
            app.label_currentpathfull.FontSize = 9;
            app.label_currentpathfull.FontColor = [0.9412 0.9412 0.9412];
            app.label_currentpathfull.Layout.Row = 1;
            app.label_currentpathfull.Layout.Column = 2;
            app.label_currentpathfull.Text = '';

            % Create Panel_3
            app.Panel_3 = uipanel(app.H_plot_grid);
            app.Panel_3.BorderType = 'none';
            app.Panel_3.BackgroundColor = [0 0.3569 0.3098];
            app.Panel_3.Layout.Row = 1;
            app.Panel_3.Layout.Column = [1 3];

            % Create Panel_4
            app.Panel_4 = uipanel(app.H_plot_grid);
            app.Panel_4.BorderType = 'none';
            app.Panel_4.BackgroundColor = [0.651 0.651 0.651];
            app.Panel_4.Layout.Row = 8;
            app.Panel_4.Layout.Column = [1 3];

            % Create grid_ProcessingInfoLabels
            app.grid_ProcessingInfoLabels = uigridlayout(app.Panel_4);
            app.grid_ProcessingInfoLabels.ColumnWidth = {'fit', 'fit', '0.2x', 'fit', 'fit', '0.2x', 'fit', 'fit', '0.2x', 'fit', 'fit', '0.2x', 'fit', 'fit', '0.2x', 'fit', 'fit'};
            app.grid_ProcessingInfoLabels.RowHeight = {22};
            app.grid_ProcessingInfoLabels.ColumnSpacing = 5;
            app.grid_ProcessingInfoLabels.Padding = [10 0 10 0];
            app.grid_ProcessingInfoLabels.BackgroundColor = [0.651 0.651 0.651];

            % Create edit_StationTitle
            app.edit_StationTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_StationTitle.FontName = 'Avenir Next';
            app.edit_StationTitle.FontWeight = 'bold';
            app.edit_StationTitle.FontAngle = 'italic';
            app.edit_StationTitle.Layout.Row = 1;
            app.edit_StationTitle.Layout.Column = 4;
            app.edit_StationTitle.Text = 'Station: ';

            % Create edit_PenetrationTitle
            app.edit_PenetrationTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_PenetrationTitle.FontName = 'Avenir Next';
            app.edit_PenetrationTitle.FontWeight = 'bold';
            app.edit_PenetrationTitle.FontAngle = 'italic';
            app.edit_PenetrationTitle.Layout.Row = 1;
            app.edit_PenetrationTitle.Layout.Column = 7;
            app.edit_PenetrationTitle.Text = 'Penetration:';

            % Create edit_LatitudeTitle
            app.edit_LatitudeTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_LatitudeTitle.FontName = 'Avenir Next';
            app.edit_LatitudeTitle.FontWeight = 'bold';
            app.edit_LatitudeTitle.FontAngle = 'italic';
            app.edit_LatitudeTitle.Layout.Row = 1;
            app.edit_LatitudeTitle.Layout.Column = 10;
            app.edit_LatitudeTitle.Text = 'Latitude:';

            % Create edit_LongitudeTitle
            app.edit_LongitudeTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_LongitudeTitle.FontName = 'Avenir Next';
            app.edit_LongitudeTitle.FontWeight = 'bold';
            app.edit_LongitudeTitle.FontAngle = 'italic';
            app.edit_LongitudeTitle.Layout.Row = 1;
            app.edit_LongitudeTitle.Layout.Column = 13;
            app.edit_LongitudeTitle.Text = 'Longitude:';

            % Create edit_ProcessingTimeTitle
            app.edit_ProcessingTimeTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_ProcessingTimeTitle.FontName = 'Avenir Next';
            app.edit_ProcessingTimeTitle.FontWeight = 'bold';
            app.edit_ProcessingTimeTitle.FontAngle = 'italic';
            app.edit_ProcessingTimeTitle.Layout.Row = 1;
            app.edit_ProcessingTimeTitle.Layout.Column = 16;
            app.edit_ProcessingTimeTitle.Text = 'Processing Time:';

            % Create edit_CruiseTitle
            app.edit_CruiseTitle = uilabel(app.grid_ProcessingInfoLabels);
            app.edit_CruiseTitle.FontName = 'Avenir Next';
            app.edit_CruiseTitle.FontWeight = 'bold';
            app.edit_CruiseTitle.FontAngle = 'italic';
            app.edit_CruiseTitle.Layout.Row = 1;
            app.edit_CruiseTitle.Layout.Column = 1;
            app.edit_CruiseTitle.Text = 'Cuise:';

            % Create label_Cruise
            app.label_Cruise = uilabel(app.grid_ProcessingInfoLabels);
            app.label_Cruise.FontAngle = 'italic';
            app.label_Cruise.Layout.Row = 1;
            app.label_Cruise.Layout.Column = 2;
            app.label_Cruise.Text = 'cruise name';

            % Create label_Station
            app.label_Station = uilabel(app.grid_ProcessingInfoLabels);
            app.label_Station.FontAngle = 'italic';
            app.label_Station.Layout.Row = 1;
            app.label_Station.Layout.Column = 5;
            app.label_Station.Text = 'station name';

            % Create label_Penetration
            app.label_Penetration = uilabel(app.grid_ProcessingInfoLabels);
            app.label_Penetration.FontAngle = 'italic';
            app.label_Penetration.Layout.Row = 1;
            app.label_Penetration.Layout.Column = 8;
            app.label_Penetration.Text = 'penetration name';

            % Create label_Latitude
            app.label_Latitude = uilabel(app.grid_ProcessingInfoLabels);
            app.label_Latitude.FontAngle = 'italic';
            app.label_Latitude.Layout.Row = 1;
            app.label_Latitude.Layout.Column = 11;
            app.label_Latitude.Text = 'latitude';

            % Create label_Longitude
            app.label_Longitude = uilabel(app.grid_ProcessingInfoLabels);
            app.label_Longitude.FontAngle = 'italic';
            app.label_Longitude.Layout.Row = 1;
            app.label_Longitude.Layout.Column = 14;
            app.label_Longitude.Text = 'longitude';

            % Create label_ProcessingTime
            app.label_ProcessingTime = uilabel(app.grid_ProcessingInfoLabels);
            app.label_ProcessingTime.FontAngle = 'italic';
            app.label_ProcessingTime.Layout.Row = 1;
            app.label_ProcessingTime.Layout.Column = 17;
            app.label_ProcessingTime.Text = 'start of processing';

            % Create panel_Thermistors
            app.panel_Thermistors = uipanel(app.H_plot_grid);
            app.panel_Thermistors.TitlePosition = 'centertop';
            app.panel_Thermistors.Title = 'Thermistors';
            app.panel_Thermistors.Layout.Row = 3;
            app.panel_Thermistors.Layout.Column = 3;
            app.panel_Thermistors.FontName = 'Avenir Next';
            app.panel_Thermistors.FontWeight = 'bold';

            % Create Button
            app.Button = uibutton(app.H_figure_grid, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Icon = fullfile(pathToMLAPP, 'Images', 'arrowpen.png');
            app.Button.BackgroundColor = [0.9412 0.9412 0.9412];
            app.Button.Layout.Row = 1;
            app.Button.Layout.Column = 2;
            app.Button.Text = '';

            % Show the figure after all components are created
            app.H_Figure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SlugPen22_working_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.H_Figure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.H_Figure)
        end
    end
end