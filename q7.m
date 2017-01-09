function varargout = q7(varargin)
% Q7 MATLAB code for q7.fig
%      Q7, by itself, creates a new Q7 or raises the existing
%      singleton*.
%
%      H = Q7 returns the handle to a new Q7 or the handle to
%      the existing singleton*.
%
%      Q7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q7.M with the given input arguments.
%
%      Q7('Property','Value',...) creates a new Q7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q7

% Last Modified by GUIDE v2.5 08-Jan-2017 20:24:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q7_OpeningFcn, ...
                   'gui_OutputFcn',  @q7_OutputFcn, ...
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


% --- Executes just before q7 is made visible.
function q7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q7 (see VARARGIN)

% Choose default command line output for q7
handles.output = hObject;

% Some parts of this gui will initially be hidden from the user
set(handles.nq7,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong7,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright7,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in q7c1.
function q7c1_Callback(hObject, eventdata, handles)
% hObject    handle to q7c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q7c1,'BackgroundColor','green','enable','off') % Tells the user they picked the right choice
set(handles.nq7,'Visible','on'); % % Next question button appears
set(handles.textright7,'Visible','on'); % Text appears with small explanation 
set(handles.q7c2, 'Enable', 'off'); % Disable option 2
set(handles.q7c3, 'Enable', 'off'); % Disable option 3
set(handles.q7c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q7c2.
function q7c2_Callback(hObject, eventdata, handles)
% hObject    handle to q7c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q7c2,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq7,'Visible','on'); % % Next question button appears
set(handles.textwrong7,'Visible','on'); % Text appears with small explanation 
set(handles.q7c1, 'Enable', 'off'); % Disable option 1
set(handles.q7c3, 'Enable', 'off'); % Disable option 3
set(handles.q7c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q7c4.
function q7c4_Callback(hObject, eventdata, handles)
% hObject    handle to q7c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q7c4,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq7,'Visible','on'); % % Next question button appears
set(handles.textwrong7,'Visible','on'); % Text appears with small explanation 
set(handles.q7c2, 'Enable', 'off'); % Disable option 2
set(handles.q7c3, 'Enable', 'off'); % Disable option 3
set(handles.q7c1, 'Enable', 'off'); % Disable option 1

% --- Executes on button press in q7c3.
function q7c3_Callback(hObject, eventdata, handles)
% hObject    handle to q7c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q7c3,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq7,'Visible','on'); % % Next question button appears
set(handles.textwrong7,'Visible','on'); % Text appears with small explanation 
set(handles.q7c2, 'Enable', 'off'); % Disable option 2
set(handles.q7c1, 'Enable', 'off'); % Disable option 1
set(handles.q7c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in nq7.
function nq7_Callback(hObject, eventdata, handles)
% hObject    handle to nq7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run q8;
close q7;
