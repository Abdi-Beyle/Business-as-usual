function varargout = q10(varargin)
% Q10 MATLAB code for q10.fig
%      Q10, by itself, creates a new Q10 or raises the existing
%      singleton*.
%
%      H = Q10 returns the handle to a new Q10 or the handle to
%      the existing singleton*.
%
%      Q10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q10.M with the given input arguments.
%
%      Q10('Property','Value',...) creates a new Q10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q10

% Last Modified by GUIDE v2.5 09-Jan-2017 14:05:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q10_OpeningFcn, ...
                   'gui_OutputFcn',  @q10_OutputFcn, ...
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


% --- Executes just before q10 is made visible.
function q10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q10 (see VARARGIN)

% Choose default command line output for q10
handles.output = hObject;

% Some parts of this gui will initially be hidden from the user
set(handles.nq10,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong10,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright10,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in q10c1.
function q10c1_Callback(hObject, eventdata, handles)
% hObject    handle to q10c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q10c1,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq10,'Visible','on'); % % Next question button appears
set(handles.textwrong10,'Visible','on'); % Text appears with small explanation 
set(handles.q10c2, 'Enable', 'off'); % Disable option 2
set(handles.q10c3, 'Enable', 'off'); % Disable option 3
set(handles.q10c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q10c2.
function q10c2_Callback(hObject, eventdata, handles)
% hObject    handle to q10c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q10c2,'BackgroundColor','green','enable','off') % Tells the user they picked the right choice
set(handles.nq10,'Visible','on'); % % Next question button appears
set(handles.textright10,'Visible','on'); % Text appears with small explanation 
set(handles.q10c1, 'Enable', 'off'); % Disable option 1
set(handles.q10c3, 'Enable', 'off'); % Disable option 3
set(handles.q10c4, 'Enable', 'off'); % Disable option 4


% --- Executes on button press in q10c4.
function q10c4_Callback(hObject, eventdata, handles)
% hObject    handle to q10c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q10c4,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq10,'Visible','on'); % % Next question button appears
set(handles.textwrong10,'Visible','on'); % Text appears with small explanation 
set(handles.q10c2, 'Enable', 'off'); % Disable option 2
set(handles.q10c3, 'Enable', 'off'); % Disable option 3
set(handles.q10c1, 'Enable', 'off'); % Disable option 1


% --- Executes on button press in q10c3.
function q10c3_Callback(hObject, eventdata, handles)
% hObject    handle to q10c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q10c3,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq10,'Visible','on'); % % Next question button appears
set(handles.textwrong10,'Visible','on'); % Text appears with small explanation 
set(handles.q10c2, 'Enable', 'off'); % Disable option 2
set(handles.q10c1, 'Enable', 'off'); % Disable option 1
set(handles.q10c4, 'Enable', 'off'); % Disable option 4


% --- Executes on button press in nq10.
function nq10_Callback(hObject, eventdata, handles)
% hObject    handle to nq10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run endpage;
close q10;