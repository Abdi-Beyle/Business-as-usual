function varargout = q2(varargin)
% Q2 MATLAB code for q2.fig
%      Q2, by itself, creates a new Q2 or raises the existing
%      singleton*.
%
%      H = Q2 returns the handle to a new Q2 or the handle to
%      the existing singleton*.
%
%      Q2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q2.M with the given input arguments.
%
%      Q2('Property','Value',...) creates a new Q2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before q2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to q2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help q2

% Last Modified by GUIDE v2.5 08-Jan-2017 17:35:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @q2_OpeningFcn, ...
                   'gui_OutputFcn',  @q2_OutputFcn, ...
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


% --- Executes just before q2 is made visible.
function q2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to q2 (see VARARGIN)

% Choose default command line output for q2
handles.output = hObject;

% Some parts of this gui will initially be hidden from the user
set(handles.nq2,'Visible','off'); % Option to go to next question is not available until user has picked an option
set(handles.textwrong2,'Visible','off');  % Incorrect answer explanation hidden
set(handles.textright2,'Visible','off'); % Correct answer explanation hidden

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes q2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = q2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function quest2_Callback(hObject, eventdata, handles)
% hObject    handle to quest2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of quest2 as text
%        str2double(get(hObject,'String')) returns contents of quest2 as a double


% --- Executes during object creation, after setting all properties.
function quest2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to quest2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in q2c1.
function q2c1_Callback(hObject, eventdata, handles)
% hObject    handle to q2c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q2c1,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq2,'Visible','on'); % % Next question button appears
set(handles.textwrong2,'Visible','on'); % Text appears with small explanation 
set(handles.q2c2, 'Enable', 'off'); % Disable option 2
set(handles.q2c3, 'Enable', 'off'); % Disable option 3
set(handles.q2c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q2c2.
function q2c2_Callback(hObject, eventdata, handles)
% hObject    handle to q2c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q2c2,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq2,'Visible','on'); % % Next question button appears
set(handles.textwrong2,'Visible','on'); % Text appears with small explanation 
set(handles.q2c1, 'Enable', 'off'); % Disable option 1
set(handles.q2c3, 'Enable', 'off'); % Disable option 3
set(handles.q2c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in q2c4.
function q2c4_Callback(hObject, eventdata, handles)
% hObject    handle to q2c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q2c4,'BackgroundColor','red','enable','off') % Tells the user they picked the wrong choice
set(handles.nq2,'Visible','on'); % % Next question button appears
set(handles.textwrong2,'Visible','on'); % Text appears with small explanation 
set(handles.q2c2, 'Enable', 'off'); % Disable option 2
set(handles.q2c3, 'Enable', 'off'); % Disable option 3
set(handles.q2c1, 'Enable', 'off'); % Disable option 1

% --- Executes on button press in q2c3.
function q2c3_Callback(hObject, eventdata, handles)
% hObject    handle to q2c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.q2c3,'BackgroundColor','green','enable','off') % Tells the user they picked the right choice
set(handles.nq2,'Visible','on'); % % Next question button appears
set(handles.textright2,'Visible','on'); % Text appears with small explanation 
set(handles.q2c2, 'Enable', 'off'); % Disable option 2
set(handles.q2c1, 'Enable', 'off'); % Disable option 1
set(handles.q2c4, 'Enable', 'off'); % Disable option 4

% --- Executes on button press in nq2.
function nq2_Callback(hObject, eventdata, handles)
% hObject    handle to nq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run q3;
close q2; 