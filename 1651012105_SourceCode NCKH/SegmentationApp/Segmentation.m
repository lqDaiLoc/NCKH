function varargout = Segmentation(varargin)
% SEGMENTATION MATLAB code for Segmentation.fig
%      SEGMENTATION, by itself, creates a new SEGMENTATION or raises the existing
%      singleton*.
%
%      H = SEGMENTATION returns the handle to a new SEGMENTATION or the handle to
%      the existing singleton*.
%
%      SEGMENTATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEGMENTATION.M with the given input arguments.
%
%      SEGMENTATION('Property','Value',...) creates a new SEGMENTATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Segmentation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Segmentation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Segmentation

% Last Modified by GUIDE v2.5 24-Mar-2019 18:44:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Segmentation_OpeningFcn, ...
                   'gui_OutputFcn',  @Segmentation_OutputFcn, ...
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


% --- Executes just before Segmentation is made visible.
function Segmentation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Segmentation (see VARARGIN)

% Choose default command line output for Segmentation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Segmentation wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.


function varargout = Segmentation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function editSpeedC_Callback(hObject, eventdata, handles)

% hObject    handle to editSpeedC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editSpeedC as text
%        str2double(get(hObject,'String')) returns contents of editSpeedC as a double
% --- Executes during object creation, after setting all properties.

function editSpeedC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSpeedC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editJC_Callback(hObject, eventdata, handles)
% hObject    handle to editJC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editJC as text
%        str2double(get(hObject,'String')) returns contents of editJC as a double
% --- Executes during object creation, after setting all properties.

function editJC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editSpeedO_Callback(hObject, eventdata, handles)
% hObject    handle to editSpeedO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editSpeedO as text
%        str2double(get(hObject,'String')) returns contents of editSpeedO as a double
% --- Executes during object creation, after setting all properties.

function editSpeedO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSpeedO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editJO_Callback(hObject, eventdata, handles)
% hObject    handle to editJO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editJO as text
%        str2double(get(hObject,'String')) returns contents of editJO as a double
% --- Executes during object creation, after setting all properties.

function editJO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editSpeedK_Callback(hObject, eventdata, handles)
% hObject    handle to editSpeedK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editSpeedK as text
%        str2double(get(hObject,'String')) returns contents of editSpeedK as a double
% --- Executes during object creation, after setting all properties. 

function editSpeedK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSpeedK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editJK_Callback(hObject, eventdata, handles)
% hObject    handle to editJK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of editJK as text
%        str2double(get(hObject,'String')) returns contents of editJK as a double
% --- Executes during object creation, after setting all properties.(see GUIDATA)

function editJK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editJK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%%%%%%  MY CODE STARTS  --- HERE ---- !!!!


%  --- ADD NEW IMAGE PROCESSING EVENT

function pushbutton1_Callback(hObject, eventdata, handles)

[fileName path] = uigetfile({'*.jpg';'*.png';'*.tif';'*.*'},'File Selector');
fullPath = strcat(path,fileName);
global img;
img = imread(fullPath);
global imgOrigin;
imgOrigin = img;
axes(handles.axesImage);
imshow(img);
axes(handles.axesImageO);
imshow(img);
axes(handles.axesImageK);
imshow(img);
axes(handles.axesImageC);
imshow(img);



% --- ADD NOISE PROCESSING EVENT

function pushbutton20_Callback(hObject, eventdata, handles)

global img;
var_noise = 0.003;
img= imnoise(img,'gaussian',...
0,var_noise);
axes(handles.axesImage);
imshow(img);
axes(handles.axesImageO);
imshow(img);
axes(handles.axesImageK);
imshow(img);
axes(handles.axesImageC);
imshow(img);



% --- DOING OTSU CLUSTERING  

function pushbutton21_Callback(hObject, eventdata, handles)

global img;
tic;

level = graythresh(img);
BW = im2bw(img,level);
tim = toc;

% --- show indexes

axes(handles.axesImageO);
imshow(BW);

set(handles.editSpeedO,'string',tim );


%  ---- caculate Jaccard index

inter_image = img & BW;
union_image = img | BW;
jaccardIdx = (1-sum(inter_image(:))/sum(union_image(:)))*100;
set(handles.editJO,'string',jaccardIdx);




% --- DOING K-MEANS CLUSTERING

function pushbutton22_Callback(hObject, eventdata, handles)

global img;
tic;
x=img;

%  determine the type of the image , if it is a color image -> convert the
%  image to grayscale image

[rows, columns, numberOfColorChannels] = size(x);
if numberOfColorChannels == 3
	x = rgb2gray(x);
end

% ---Number of clusters

numberOfClusters = 4;
grayLevels = double(x(:)); 
[clusterIndexes, clusterCenters] = kmeans(grayLevels, numberOfClusters,'Replicates',3);
resultImg = reshape(clusterIndexes, rows, columns);

% ---Show the result

axes(handles.axesImageK);
imshow(resultImg,[]);


tim=toc;
set(handles.editSpeedK,'string',tim);


%  ---- caculate Jaccard index

inter = img & resultImg;
union = img | resultImg;
jaccardIdx = (1- sum(inter(:))/sum(union(:)))*100;
set(handles.editJK,'string',jaccardIdx);



%--- DOING CURVELET + K-MEANS CLUSTERING


function pushbutton23_Callback(hObject, eventdata, handles)

global img;
tic;
y=img;
[rows, columns, numberOfColorChannels] = size(y);
if numberOfColorChannels == 3
	y = rgb2gray(img);
end

%--- Doing curvelet and bayesian

res = Curvelet_Bayes(y);

% --- Doing Kmeans

numberOfClusters = 4;
grayLevels = double(res(:)); % Convert to column vector.
[clusterIndexes, clusterCenters] = kmeans(grayLevels, numberOfClusters,'Replicates',3);
result = reshape(clusterIndexes, rows, columns);

% ------- Doing snakes ( ACM )

mask = zeros(size(result));
mask(25:end-25, 25:end-25) = 1;
result_final = activecontour(result, mask,400);


% --- Show indexes

axes(handles.axesImageC);
imshow(result_final,[]);

tim=toc;
set(handles.editSpeedC,'string',tim);

% ---- caculate Jaccard index

inter_image = img & result_final;
union_image = img | result_final;
jI = (1- sum(inter_image(:))/sum(union_image(:)))*100;
set(handles.editJC,'string',jI);


% --- Executes during object creation, after setting all properties.
function pushbutton23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
