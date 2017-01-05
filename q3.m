function varargout = q3(varargin)
% Q3 MATLAB code for q3.fig
%      Q3, by itself, creates a new Q3 or raises the existing
%      singleton*.
%
%      H = Q3 returns the handle to a new Q3 or the handle to
%      the existing singleton*.
%
%      Q3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q3.M with the given input arguments.
%
%      Q3('Property','Value',...) creates a new Q3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q3

% Last Modified by GUIDE v2.5 08-Dec-2016 13:22:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q3_OpeningFcn, ...
                   'gui_OutputFcn',  @q3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before q3 is made visible.
function q3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q3 (see VARARGIN)

% Choose default command line output for q3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'string','Incorrect!!' ,'enable','off')
pause(2);
closereq;
GamePlotFigure(q4);
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton2,'string','Correct!!' ,'BackgroundColor','green','enable','off')
pause(2);
closereq;
GamePlotFigure(q4);
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton3,'string','Incorrect!!' ,'BackgroundColor','red','enable','off')
pause(2);
closereq;
GamePlotFigure(q4);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton4,'string','Incorrect!!' ,'BackgroundColor','red','enable','off')
pause(2);
closereq;
GamePlotFigure(q4);
