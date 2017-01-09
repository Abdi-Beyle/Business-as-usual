function varargout = endpage(varargin)
% ENDPAGE MATLAB code for endpage.fig
%      ENDPAGE, by itself, creates a new ENDPAGE or raises the existing
%      singleton*.
%
%      H = ENDPAGE returns the handle to a new ENDPAGE or the handle to
%      the existing singleton*.
%
%      ENDPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENDPAGE.M with the given input arguments.
%
%      ENDPAGE('Property','Value',...) creates a new ENDPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before endpage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to endpage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help endpage

% Last Modified by GUIDE v2.5 09-Jan-2017 14:19:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @endpage_OpeningFcn, ...
                   'gui_OutputFcn',  @endpage_OutputFcn, ...
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


% --- Executes just before endpage is made visible.
function endpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to endpage (see VARARGIN)

% Choose default command line output for endpage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes endpage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = endpage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure



% --- Executes on button press in closebtn.
function closebtn_Callback(hObject, eventdata, handles)
% hObject    handle to closebtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close endpage

% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rev = get(handles.uireview,'SelectedObject');
actrev = get(rev, 'string')
set(handles.submit, 'Enable', 'off');
