function varargout = q5(varargin)
% Q5 MATLAB code for q5.fig
%      Q5, by itself, creates a new Q5 or raises the existing
%      singleton*.
%
%      H = Q5 returns the handle to a new Q5 or the handle to
%      the existing singleton*.
%
%      Q5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q5.M with the given input arguments.
%
%      Q5('Property','Value',...) creates a new Q5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q5

% Last Modified by GUIDE v2.5 08-Jan-2017 19:03:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q5_OpeningFcn, ...
                   'gui_OutputFcn',  @q5_OutputFcn, ...
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


% --- Executes just before q5 is made visible.
function q5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q5 (see VARARGIN)

% Choose default command line output for q5
handles.output = hObject;

% Some parts of this gui will initially be hidden from the user
set(handles.nq5,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong5,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright5,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in q5c1.
function q5c1_Callback(hObject, eventdata, handles)
% hObject    handle to q5c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q5c1,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq5,'Visible','on'); % % Next question button appears
set(handles.textwrong5,'Visible','on'); % Text appears with small explanation 
set(handles.q5c2, 'Enable', 'off'); % Disable option 2
set(handles.q5c3, 'Enable', 'off'); % Disable option 3
set(handles.q5c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q5c2.
function q5c2_Callback(hObject, eventdata, handles)
% hObject    handle to q5c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q5c2,'BackgroundColor','green','enable','off') % Tells the user they picked the wrong choice
set(handles.nq5,'Visible','on'); % % Next question button appears
set(handles.textright5,'Visible','on'); % Text appears with small explanation 
set(handles.q5c1, 'Enable', 'off'); % Disable option 1
set(handles.q5c3, 'Enable', 'off'); % Disable option 3
set(handles.q5c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q5c4.
function q5c4_Callback(hObject, eventdata, handles)
% hObject    handle to q5c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q5c4,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq5,'Visible','on'); % % Next question button appears
set(handles.textwrong5,'Visible','on'); % Text appears with small explanation 
set(handles.q5c2, 'Enable', 'off'); % Disable option 2
set(handles.q5c3, 'Enable', 'off'); % Disable option 3
set(handles.q5c1, 'Enable', 'off'); % Disable option 1

% --- Executes on button press in q5c3.
function q5c3_Callback(hObject, eventdata, handles)
% hObject    handle to q5c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q5c3,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq5,'Visible','on'); % % Next question button appears
set(handles.textwrong5,'Visible','on'); % Text appears with small explanation 
set(handles.q5c2, 'Enable', 'off'); % Disable option 2
set(handles.q5c1, 'Enable', 'off'); % Disable option 1
set(handles.q5c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in nq5.
function nq5_Callback(hObject, eventdata, handles)
% hObject    handle to nq5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run q6;
close q5;