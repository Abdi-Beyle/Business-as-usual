function varargout = q6(varargin)
% Q6 MATLAB code for q6.fig
%      Q6, by itself, creates a new Q6 or raises the existing
%      singleton*.
%
%      H = Q6 returns the handle to a new Q6 or the handle to
%      the existing singleton*.
%
%      Q6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q6.M with the given input arguments.
%
%      Q6('Property','Value',...) creates a new Q6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q6

% Last Modified by GUIDE v2.5 08-Jan-2017 20:32:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q6_OpeningFcn, ...
                   'gui_OutputFcn',  @q6_OutputFcn, ...
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


% --- Executes just before q6 is made visible.
function q6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q6 (see VARARGIN)

% Choose default command line output for q6
handles.output = hObject;
% Some parts of this gui will initially be hidden from the user
set(handles.nq6,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong6,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright6,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in q6c1.
function q6c1_Callback(hObject, eventdata, handles)
% hObject    handle to q6c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q6c1,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq6,'Visible','on'); % % Next question button appears
set(handles.textwrong6,'Visible','on'); % Text appears with small explanation 
set(handles.q6c2, 'Enable', 'off'); % Disable option 2
set(handles.q6c3, 'Enable', 'off'); % Disable option 3
set(handles.q6c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q6c2.
function q6c2_Callback(hObject, eventdata, handles)
% hObject    handle to q6c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q6c2,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq6,'Visible','on'); % % Next question button appears
set(handles.textwrong6,'Visible','on'); % Text appears with small explanation 
set(handles.q6c1, 'Enable', 'off'); % Disable option 1
set(handles.q6c3, 'Enable', 'off'); % Disable option 3
set(handles.q6c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q6c4.
function q6c4_Callback(hObject, eventdata, handles)
% hObject    handle to q6c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q6c4,'BackgroundColor','green','enable','off') % Tells the user they picked the right choice
set(handles.nq6,'Visible','on'); % % Next question button appears
set(handles.textright6,'Visible','on'); % Text appears with small explanation 
set(handles.q6c1, 'Enable', 'off'); % Disable option 1
set(handles.q6c3, 'Enable', 'off'); % Disable option 3
set(handles.q6c2, 'Enable', 'off'); % Disable option 2

% --- Executes on button press in q6c3.
function q6c3_Callback(hObject, eventdata, handles)
% hObject    handle to q6c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q6c3,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq6,'Visible','on'); % % Next question button appears
set(handles.textwrong6,'Visible','on'); % Text appears with small explanation 
set(handles.q6c1, 'Enable', 'off'); % Disable option 1
set(handles.q6c2, 'Enable', 'off'); % Disable option 2
set(handles.q5c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in nq6.
function nq6_Callback(hObject, eventdata, handles)
% hObject    handle to nq6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run q7;
close q6;
