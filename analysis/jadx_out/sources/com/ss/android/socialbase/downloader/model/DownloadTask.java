package com.ss.android.socialbase.downloader.model;

import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.EnqueueType;
import com.ss.android.socialbase.downloader.constants.iw;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadInterceptor;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.cd;
import com.ss.android.socialbase.downloader.depend.k;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.downloader.f;
import com.ss.android.socialbase.downloader.downloader.gh;
import com.ss.android.socialbase.downloader.downloader.ia;
import com.ss.android.socialbase.downloader.downloader.mn;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DownloadTask {
    private boolean autoSetHashCodeForSameTask;
    private mn chunkAdjustCalculator;
    private ia chunkStrategy;
    private q depend;
    private cd diskSpaceHandler;
    private final List<mp> downloadCompleteHandlers;
    private DownloadInfo downloadInfo;
    private DownloadInfo.dq downloadInfoBuilder;
    private IDownloadFileUriProvider fileUriProvider;
    private k forbiddenHandler;
    private int hashCodeForSameTask;
    private IDownloadInterceptor interceptor;
    private final SparseArray<IDownloadListener> mainThreadListeners;
    private wp monitorDepend;
    private boolean needDelayForCacheSync;
    private op notificationClickCallback;
    private kx notificationEventListener;
    private final SparseArray<IDownloadListener> notificationListeners;
    private gh retryDelayTimeCalculator;
    private final SparseArray<iw> singleListenerHashCodeMap;
    private final Map<iw, IDownloadListener> singleListenerMap;
    private final SparseArray<IDownloadListener> subThreadListeners;

    public DownloadTask() {
        this.singleListenerMap = new ConcurrentHashMap();
        this.singleListenerHashCodeMap = new SparseArray<>();
        this.needDelayForCacheSync = false;
        this.downloadCompleteHandlers = new ArrayList();
        this.autoSetHashCodeForSameTask = true;
        this.downloadInfoBuilder = new DownloadInfo.dq();
        this.mainThreadListeners = new SparseArray<>();
        this.subThreadListeners = new SparseArray<>();
        this.notificationListeners = new SparseArray<>();
    }

    public DownloadTask(DownloadInfo downloadInfo) {
        this();
        this.downloadInfo = downloadInfo;
    }

    private void addAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            sparseArray2.put(keyAt, sparseArray.get(keyAt));
        }
    }

    private void addListenerToDownloadingSameTask(iw iwVar) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(iwVar);
        synchronized (downloadListeners) {
            for (int i = 0; i < downloadListeners.size(); i++) {
                try {
                    IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i));
                    if (iDownloadListener != null) {
                        com.ss.android.socialbase.downloader.downloader.p.dq().d(getDownloadId(), iDownloadListener, iwVar, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void copyListeners(SparseArray<IDownloadListener> sparseArray, SparseArray<IDownloadListener> sparseArray2) {
        sparseArray.clear();
        for (int i = 0; i < sparseArray2.size(); i++) {
            int keyAt = sparseArray2.keyAt(i);
            IDownloadListener iDownloadListener = sparseArray2.get(keyAt);
            if (iDownloadListener != null) {
                sparseArray.put(keyAt, iDownloadListener);
            }
        }
    }

    private void removeAll(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null || sparseArray2 == null) {
            return;
        }
        int size = sparseArray2.size();
        for (int i = 0; i < size; i++) {
            sparseArray.remove(sparseArray2.keyAt(i));
        }
    }

    private void setChunkCalculator() {
        if (this.downloadInfo.getThrottleNetSpeed() > 0) {
            chunkStategy(new ia() { // from class: com.ss.android.socialbase.downloader.model.DownloadTask.2
                @Override // com.ss.android.socialbase.downloader.downloader.ia
                public int dq(long j) {
                    return 1;
                }
            });
        }
    }

    public DownloadTask addDownloadCompleteHandler(mp mpVar) {
        synchronized (this.downloadCompleteHandlers) {
            if (mpVar != null) {
                try {
                    if (!this.downloadCompleteHandlers.contains(mpVar)) {
                        this.downloadCompleteHandlers.add(mpVar);
                        return this;
                    }
                } finally {
                }
            }
            return this;
        }
    }

    public void addDownloadListener(int i, IDownloadListener iDownloadListener, iw iwVar, boolean z) {
        Map<iw, IDownloadListener> map;
        if (iDownloadListener == null) {
            return;
        }
        if (z && (map = this.singleListenerMap) != null) {
            map.put(iwVar, iDownloadListener);
            synchronized (this.singleListenerHashCodeMap) {
                this.singleListenerHashCodeMap.put(i, iwVar);
            }
        }
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(iwVar);
        if (downloadListeners == null) {
            return;
        }
        synchronized (downloadListeners) {
            downloadListeners.put(i, iDownloadListener);
        }
    }

    public void addListenerToDownloadingSameTask() {
        com.ss.android.socialbase.downloader.ox.dq.d("DownloadTask", "same task just tryDownloading, so add listener in last task instead of tryDownload");
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null && !downloadInfo.isAddListenerToSameTask()) {
            this.downloadInfo.setAddListenerToSameTask(true);
        }
        addListenerToDownloadingSameTask(iw.MAIN);
        addListenerToDownloadingSameTask(iw.SUB);
        com.ss.android.socialbase.downloader.p.dq.dq(this.monitorDepend, this.downloadInfo, new BaseException(1003, "has another same task, add Listener to old task"), 0);
    }

    public DownloadTask addListenerToSameTask(boolean z) {
        this.downloadInfoBuilder.f(z);
        return this;
    }

    public void asyncDownload(final f fVar) {
        com.ss.android.socialbase.downloader.ia.p.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.model.DownloadTask.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask.this.download();
            }
        });
    }

    public synchronized int autoCalAndGetHashCodeForSameTask() {
        try {
            IDownloadListener singleDownloadListener = getSingleDownloadListener(iw.MAIN);
            if (singleDownloadListener == null) {
                singleDownloadListener = getSingleDownloadListener(iw.SUB);
            }
            if (singleDownloadListener != null) {
                this.hashCodeForSameTask = singleDownloadListener.hashCode();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.hashCodeForSameTask;
    }

    public DownloadTask autoResumed(boolean z) {
        this.downloadInfoBuilder.iw(z);
        return this;
    }

    public DownloadTask autoSetHashCodeForSameTask(boolean z) {
        this.autoSetHashCodeForSameTask = z;
        return this;
    }

    public DownloadTask backUpUrlRetryCount(int i) {
        this.downloadInfoBuilder.ox(i);
        return this;
    }

    public DownloadTask backUpUrls(List<String> list) {
        this.downloadInfoBuilder.d(list);
        return this;
    }

    public boolean canShowNotification() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo != null) {
            return downloadInfo.canShowNotification();
        }
        return false;
    }

    public DownloadTask chunkAdjustCalculator(mn mnVar) {
        this.chunkAdjustCalculator = mnVar;
        return this;
    }

    public DownloadTask chunkStategy(ia iaVar) {
        this.chunkStrategy = iaVar;
        return this;
    }

    public void copyInterfaceFromNewTask(DownloadTask downloadTask) {
        this.chunkAdjustCalculator = downloadTask.chunkAdjustCalculator;
        this.chunkStrategy = downloadTask.chunkStrategy;
        this.singleListenerMap.clear();
        this.singleListenerMap.putAll(downloadTask.singleListenerMap);
        synchronized (this.mainThreadListeners) {
            this.mainThreadListeners.clear();
            addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
        }
        synchronized (this.subThreadListeners) {
            this.subThreadListeners.clear();
            addAll(downloadTask.subThreadListeners, this.subThreadListeners);
        }
        synchronized (this.notificationListeners) {
            this.notificationListeners.clear();
            addAll(downloadTask.notificationListeners, this.notificationListeners);
        }
        this.notificationEventListener = downloadTask.notificationEventListener;
        this.interceptor = downloadTask.interceptor;
        this.depend = downloadTask.depend;
        this.monitorDepend = downloadTask.monitorDepend;
        this.forbiddenHandler = downloadTask.forbiddenHandler;
        this.diskSpaceHandler = downloadTask.diskSpaceHandler;
        this.retryDelayTimeCalculator = downloadTask.retryDelayTimeCalculator;
        this.notificationClickCallback = downloadTask.notificationClickCallback;
        this.fileUriProvider = downloadTask.fileUriProvider;
        synchronized (this.downloadCompleteHandlers) {
            this.downloadCompleteHandlers.clear();
            this.downloadCompleteHandlers.addAll(downloadTask.downloadCompleteHandlers);
        }
    }

    public void copyListenerFromPendingTask(DownloadTask downloadTask) {
        for (Map.Entry<iw, IDownloadListener> entry : downloadTask.singleListenerMap.entrySet()) {
            if (entry != null && !this.singleListenerMap.containsKey(entry.getKey())) {
                this.singleListenerMap.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            if (downloadTask.mainThreadListeners.size() != 0) {
                synchronized (this.mainThreadListeners) {
                    removeAll(this.mainThreadListeners, downloadTask.mainThreadListeners);
                    addAll(downloadTask.mainThreadListeners, this.mainThreadListeners);
                }
            }
            if (downloadTask.subThreadListeners.size() != 0) {
                synchronized (this.subThreadListeners) {
                    removeAll(this.subThreadListeners, downloadTask.subThreadListeners);
                    addAll(downloadTask.subThreadListeners, this.subThreadListeners);
                }
            }
            if (downloadTask.notificationListeners.size() != 0) {
                synchronized (this.notificationListeners) {
                    removeAll(this.notificationListeners, downloadTask.notificationListeners);
                    addAll(downloadTask.notificationListeners, this.notificationListeners);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public DownloadTask deleteCacheIfCheckFailed(boolean z) {
        this.downloadInfoBuilder.r(z);
        return this;
    }

    public DownloadTask depend(q qVar) {
        this.depend = qVar;
        return this;
    }

    public DownloadTask diskSpaceHandler(cd cdVar) {
        this.diskSpaceHandler = cdVar;
        return this;
    }

    public DownloadTask distinctDirectory(boolean z) {
        this.downloadInfoBuilder.i(z);
        return this;
    }

    public int download() {
        this.downloadInfo = this.downloadInfoBuilder.dq();
        DownloadInfo d2 = com.ss.android.socialbase.downloader.downloader.ox.e().d(this.downloadInfo.getId());
        if (d2 == null) {
            this.downloadInfo.generateTaskId();
            com.ss.android.socialbase.downloader.p.dq.dq(this, (BaseException) null, 0);
        } else {
            this.downloadInfo.copyTaskIdFromCacheData(d2);
        }
        setChunkCalculator();
        com.ss.android.socialbase.downloader.downloader.p.dq().dq(this);
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadTask downloadSetting(JSONObject jSONObject) {
        this.downloadInfoBuilder.dq(jSONObject);
        return this;
    }

    public DownloadTask enqueueType(EnqueueType enqueueType) {
        this.downloadInfoBuilder.dq(enqueueType);
        return this;
    }

    public DownloadTask executorGroup(int i) {
        this.downloadInfoBuilder.iw(i);
        return this;
    }

    public DownloadTask expectFileLength(long j) {
        this.downloadInfoBuilder.dq(j);
        return this;
    }

    public DownloadTask expiredRedownload(boolean z) {
        this.downloadInfoBuilder.gh(z);
        return this;
    }

    public DownloadTask extra(String str) {
        this.downloadInfoBuilder.mn(str);
        return this;
    }

    public DownloadTask extraHeaders(List<ox> list) {
        this.downloadInfoBuilder.dq(list);
        return this;
    }

    public DownloadTask extraMonitorStatus(int[] iArr) {
        this.downloadInfoBuilder.d(iArr);
        return this;
    }

    public DownloadTask fileUriProvider(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.fileUriProvider = iDownloadFileUriProvider;
        return this;
    }

    public DownloadTask forbiddenHandler(k kVar) {
        this.forbiddenHandler = kVar;
        return this;
    }

    public DownloadTask force(boolean z) {
        this.downloadInfoBuilder.d(z);
        return this;
    }

    public mn getChunkAdjustCalculator() {
        return this.chunkAdjustCalculator;
    }

    public ia getChunkStrategy() {
        return this.chunkStrategy;
    }

    public q getDepend() {
        return this.depend;
    }

    public cd getDiskSpaceHandler() {
        return this.diskSpaceHandler;
    }

    public mp getDownloadCompleteHandlerByIndex(int i) {
        synchronized (this.downloadCompleteHandlers) {
            try {
                if (i >= this.downloadCompleteHandlers.size()) {
                    return null;
                }
                return this.downloadCompleteHandlers.get(i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<mp> getDownloadCompleteHandlers() {
        return this.downloadCompleteHandlers;
    }

    public int getDownloadId() {
        DownloadInfo downloadInfo = this.downloadInfo;
        if (downloadInfo == null) {
            return 0;
        }
        return downloadInfo.getId();
    }

    public DownloadInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public IDownloadListener getDownloadListenerByIndex(iw iwVar, int i) {
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(iwVar);
        if (downloadListeners == null || i < 0) {
            return null;
        }
        synchronized (downloadListeners) {
            try {
                if (i >= downloadListeners.size()) {
                    return null;
                }
                return downloadListeners.get(downloadListeners.keyAt(i));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getDownloadListenerSize(iw iwVar) {
        int size;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(iwVar);
        if (downloadListeners == null) {
            return 0;
        }
        synchronized (downloadListeners) {
            size = downloadListeners.size();
        }
        return size;
    }

    public SparseArray<IDownloadListener> getDownloadListeners(iw iwVar) {
        if (iwVar == iw.MAIN) {
            return this.mainThreadListeners;
        }
        if (iwVar == iw.SUB) {
            return this.subThreadListeners;
        }
        if (iwVar == iw.NOTIFICATION) {
            return this.notificationListeners;
        }
        return null;
    }

    public IDownloadFileUriProvider getFileUriProvider() {
        return this.fileUriProvider;
    }

    public k getForbiddenHandler() {
        return this.forbiddenHandler;
    }

    public int getHashCodeForSameTask() {
        return this.hashCodeForSameTask;
    }

    public IDownloadInterceptor getInterceptor() {
        return this.interceptor;
    }

    public wp getMonitorDepend() {
        return this.monitorDepend;
    }

    public op getNotificationClickCallback() {
        return this.notificationClickCallback;
    }

    public kx getNotificationEventListener() {
        return this.notificationEventListener;
    }

    public gh getRetryDelayTimeCalculator() {
        return this.retryDelayTimeCalculator;
    }

    public IDownloadListener getSingleDownloadListener(iw iwVar) {
        return this.singleListenerMap.get(iwVar);
    }

    public DownloadTask hashCodeForSameTask(int i) {
        this.hashCodeForSameTask = i;
        return this;
    }

    public DownloadTask headConnectionAvailable(boolean z) {
        this.downloadInfoBuilder.mp(z);
        return this;
    }

    public DownloadTask iconUrl(String str) {
        this.downloadInfoBuilder.mp(str);
        return this;
    }

    public DownloadTask ignoreDataVerify(boolean z) {
        this.downloadInfoBuilder.q(z);
        return this;
    }

    public DownloadTask interceptor(IDownloadInterceptor iDownloadInterceptor) {
        this.interceptor = iDownloadInterceptor;
        return this;
    }

    public boolean isAutoSetHashCodeForSameTask() {
        return this.autoSetHashCodeForSameTask;
    }

    public boolean isNeedDelayForCacheSync() {
        return this.needDelayForCacheSync;
    }

    public DownloadTask isOpenLimitSpeed(boolean z) {
        this.downloadInfoBuilder.cd(z);
        return this;
    }

    public DownloadTask mainThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : mainThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask mainThreadListenerWithHashCode(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.mainThreadListeners) {
            this.mainThreadListeners.put(i, iDownloadListener);
        }
        Map<iw, IDownloadListener> map = this.singleListenerMap;
        iw iwVar = iw.MAIN;
        map.put(iwVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i, iwVar);
        }
        return this;
    }

    public DownloadTask maxBytes(int i) {
        this.downloadInfoBuilder.dq(i);
        return this;
    }

    public DownloadTask maxProgressCount(int i) {
        this.downloadInfoBuilder.p(i);
        return this;
    }

    public DownloadTask md5(String str) {
        this.downloadInfoBuilder.o(str);
        return this;
    }

    public DownloadTask mimeType(String str) {
        this.downloadInfoBuilder.ia(str);
        return this;
    }

    public DownloadTask minProgressTimeMsInterval(int i) {
        this.downloadInfoBuilder.s(i);
        return this;
    }

    public DownloadTask monitorDepend(wp wpVar) {
        this.monitorDepend = wpVar;
        return this;
    }

    public DownloadTask monitorScene(String str) {
        this.downloadInfoBuilder.ig(str);
        return this;
    }

    public DownloadTask name(String str) {
        this.downloadInfoBuilder.dq(str);
        return this;
    }

    public DownloadTask needChunkDowngradeRetry(boolean z) {
        this.downloadInfoBuilder.jy(z);
        return this;
    }

    public DownloadTask needDefaultHttpServiceBackUp(boolean z) {
        this.downloadInfoBuilder.ia(z);
        return this;
    }

    public DownloadTask needHttpsToHttpRetry(boolean z) {
        this.downloadInfoBuilder.p(z);
        return this;
    }

    public DownloadTask needIndependentProcess(boolean z) {
        this.downloadInfoBuilder.ig(z);
        return this;
    }

    public DownloadTask needPostProgress(boolean z) {
        this.downloadInfoBuilder.ox(z);
        return this;
    }

    public DownloadTask needRetryDelay(boolean z) {
        this.downloadInfoBuilder.o(z);
        return this;
    }

    public DownloadTask needReuseChunkRunnable(boolean z) {
        this.downloadInfoBuilder.kk(z);
        return this;
    }

    public DownloadTask needReuseFirstConnection(boolean z) {
        this.downloadInfoBuilder.no(z);
        return this;
    }

    public DownloadTask needSDKMonitor(boolean z) {
        this.downloadInfoBuilder.fw(z);
        return this;
    }

    @Deprecated
    public DownloadTask newSaveTempFileEnable(boolean z) {
        return this;
    }

    public DownloadTask notificationClickCallback(op opVar) {
        this.notificationClickCallback = opVar;
        return this;
    }

    public DownloadTask notificationEventListener(kx kxVar) {
        this.notificationEventListener = kxVar;
        return this;
    }

    public DownloadTask notificationListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : notificationListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask notificationListenerWithHashCode(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.notificationListeners) {
            this.notificationListeners.put(i, iDownloadListener);
        }
        Map<iw, IDownloadListener> map = this.singleListenerMap;
        iw iwVar = iw.NOTIFICATION;
        map.put(iwVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i, iwVar);
        }
        return this;
    }

    public DownloadTask onlyWifi(boolean z) {
        this.downloadInfoBuilder.dq(z);
        return this;
    }

    public DownloadTask outIp(String[] strArr) {
        this.downloadInfoBuilder.dq(strArr);
        return this;
    }

    public DownloadTask outSize(int[] iArr) {
        this.downloadInfoBuilder.dq(iArr);
        return this;
    }

    public DownloadTask packageName(String str) {
        this.downloadInfoBuilder.kk(str);
        return this;
    }

    public void removeDownloadListener(int i, IDownloadListener iDownloadListener, iw iwVar, boolean z) {
        int indexOfValue;
        SparseArray<IDownloadListener> downloadListeners = getDownloadListeners(iwVar);
        if (downloadListeners == null) {
            if (z && this.singleListenerMap.containsKey(iwVar)) {
                this.singleListenerMap.remove(iwVar);
                return;
            }
            return;
        }
        synchronized (downloadListeners) {
            try {
                if (z) {
                    if (this.singleListenerMap.containsKey(iwVar)) {
                        iDownloadListener = this.singleListenerMap.get(iwVar);
                        this.singleListenerMap.remove(iwVar);
                    }
                    if (iDownloadListener != null && (indexOfValue = downloadListeners.indexOfValue(iDownloadListener)) >= 0 && indexOfValue < downloadListeners.size()) {
                        downloadListeners.removeAt(indexOfValue);
                    }
                } else {
                    downloadListeners.remove(i);
                    synchronized (this.singleListenerHashCodeMap) {
                        try {
                            iw iwVar2 = this.singleListenerHashCodeMap.get(i);
                            if (iwVar2 != null && this.singleListenerMap.containsKey(iwVar2)) {
                                this.singleListenerMap.remove(iwVar2);
                                this.singleListenerHashCodeMap.remove(i);
                            }
                        } finally {
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public DownloadTask retryCount(int i) {
        this.downloadInfoBuilder.d(i);
        return this;
    }

    public DownloadTask retryDelayTimeArray(String str) {
        this.downloadInfoBuilder.no(str);
        return this;
    }

    public DownloadTask retryDelayTimeCalculator(gh ghVar) {
        this.retryDelayTimeCalculator = ghVar;
        return this;
    }

    public DownloadTask savePath(String str) {
        this.downloadInfoBuilder.s(str);
        return this;
    }

    public DownloadTask setAutoInstall(boolean z) {
        this.downloadInfoBuilder.le(z);
        return this;
    }

    public DownloadTask setDownloadCompleteHandlers(List<mp> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<mp> it = list.iterator();
            while (it.hasNext()) {
                addDownloadCompleteHandler(it.next());
            }
        }
        return this;
    }

    public void setDownloadListeners(SparseArray<IDownloadListener> sparseArray, iw iwVar) {
        if (sparseArray == null) {
            return;
        }
        try {
            if (iwVar == iw.MAIN) {
                synchronized (this.mainThreadListeners) {
                    copyListeners(this.mainThreadListeners, sparseArray);
                }
                return;
            } else if (iwVar == iw.SUB) {
                synchronized (this.subThreadListeners) {
                    copyListeners(this.subThreadListeners, sparseArray);
                }
                return;
            } else {
                if (iwVar == iw.NOTIFICATION) {
                    synchronized (this.notificationListeners) {
                        copyListeners(this.notificationListeners, sparseArray);
                    }
                    return;
                }
                return;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        th.printStackTrace();
    }

    public void setNeedDelayForCacheSync(boolean z) {
        this.needDelayForCacheSync = z;
    }

    public void setNotificationEventListener(kx kxVar) {
        this.notificationEventListener = kxVar;
    }

    public DownloadTask showNotification(boolean z) {
        this.downloadInfoBuilder.s(z);
        return this;
    }

    public DownloadTask showNotificationForAutoResumed(boolean z) {
        this.downloadInfoBuilder.mn(z);
        return this;
    }

    public DownloadTask subThreadListener(IDownloadListener iDownloadListener) {
        return iDownloadListener == null ? this : subThreadListenerWithHashCode(iDownloadListener.hashCode(), iDownloadListener);
    }

    public DownloadTask subThreadListenerWithHashCode(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return this;
        }
        synchronized (this.subThreadListeners) {
            this.subThreadListeners.put(i, iDownloadListener);
        }
        Map<iw, IDownloadListener> map = this.singleListenerMap;
        iw iwVar = iw.SUB;
        map.put(iwVar, iDownloadListener);
        synchronized (this.singleListenerHashCodeMap) {
            this.singleListenerHashCodeMap.put(i, iwVar);
        }
        return this;
    }

    public DownloadTask taskKey(String str) {
        this.downloadInfoBuilder.p(str);
        return this;
    }

    public DownloadTask tempPath(String str) {
        this.downloadInfoBuilder.iw(str);
        return this;
    }

    public DownloadTask throttleNetSpeed(long j) {
        this.downloadInfoBuilder.d(j);
        return this;
    }

    public DownloadTask title(String str) {
        this.downloadInfoBuilder.d(str);
        return this;
    }

    public DownloadTask ttnetProtectTimeout(long j) {
        this.downloadInfoBuilder.ox(j);
        return this;
    }

    public DownloadTask url(String str) {
        this.downloadInfoBuilder.ox(str);
        return this;
    }
}
