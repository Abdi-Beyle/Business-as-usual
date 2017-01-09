function varargout = q9(varargin)
% Q9 MATLAB code for q9.fig
%      Q9, by itself, creates a new Q9 or raises the existing
%      singleton*.
%
%      H = Q9 returns the handle to a new Q9 or the handle to
%      the existing singleton*.
%
%      Q9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q9.M with the given input arguments.
%
%      Q9('Property','Value',...) creates a new Q9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q9

% Last Modified by GUIDE v2.5 08-Jan-2017 21:16:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q9_OpeningFcn, ...
                   'gui_OutputFcn',  @q9_OutputFcn, ...
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


% --- Executes just before q9 is made visible.
function q9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q9 (see VARARGIN)

% Choose default command line output for q9
handles.output = hObject;

% Some parts of this gui will initially be hidden from the user
set(handles.nq9,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong9,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright9,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in q9c1.
function q9c1_Callback(hObject, eventdata, handles)
% hObject    handle to q9c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q9c1,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq9,'Visible','on'); % % Next question button appears
set(handles.textwrong9,'Visible','on'); % Text appears with small explanation 
set(handles.q9c2, 'Enable', 'off'); % Disable option 2
set(handles.q9c3, 'Enable', 'off'); % Disable option 3
set(handles.q9c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q9c2.
function q9c2_Callback(hObject, eventdata, handles)
% hObject    handle to q9c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q9c2,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq9,'Visible','on'); % % Next question button appears
set(handles.textwrong9,'Visible','on'); % Text appears with small explanation 
set(handles.q9c1, 'Enable', 'off'); % Disable option 1
set(handles.q9c3, 'Enable', 'off'); % Disable option 3
set(handles.q9c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q9c4.
function q9c4_Callback(hObject, eventdata, handles)
% hObject    handle to q9c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q9c4,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq9,'Visible','on'); % % Next question button appears
set(handles.textwrong9,'Visible','on'); % Text appears with small explanation 
set(handles.q9c2, 'Enable', 'off'); % Disable option 2
set(handles.q9c3, 'Enable', 'off'); % Disable option 3
set(handles.q9c1, 'Enable', 'off'); % Disable option 1

% --- Executes on button press in q9c3.
function q9c3_Callback(hObject, eventdata, handles)
% hObject    handle to q9c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q9c3,'BackgroundColor','green','enable','off') % Tells the user they picked the right choice
set(handles.nq9,'Visible','on'); % % Next question button appears
set(handles.textright9,'Visible','on'); % Text appears with small explanation 
set(handles.q9c2, 'Enable', 'off'); % Disable option 2
set(handles.q9c1, 'Enable', 'off'); % Disable option 1
set(handles.q9c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in nq9.
function nq9_Callback(hObject, eventdata, handles)
% hObject    handle to nq9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run q10;
close q9;