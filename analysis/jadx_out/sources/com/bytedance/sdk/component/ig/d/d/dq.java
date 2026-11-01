package com.bytedance.sdk.component.ig.d.d;

import android.content.Context;
import com.bykv.vk.component.ttvideo.DataLoaderHelper;
import com.bykv.vk.component.ttvideo.IPreLoaderItemCallBackListener;
import com.bykv.vk.component.ttvideo.PreLoaderItemCallBackInfo;
import com.bykv.vk.component.ttvideo.PreloaderURLItem;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bykv.vk.openvk.component.video.api.iw.ox;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.s.dq;

/* loaded from: classes.dex */
public class dq implements com.bykv.vk.openvk.component.video.api.s.dq {

    /* renamed from: d, reason: collision with root package name */
    public static volatile int f1934d;
    public static volatile int dq;
    public static volatile int ox;
    public static volatile int p;
    private static Object s = new Object();

    /* JADX WARN: Removed duplicated region for block: B:11:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0110 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    @Override // com.bykv.vk.openvk.component.video.api.s.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Context context, final p pVar, final dq.InterfaceC0005dq interfaceC0005dq) {
        long j;
        DataLoaderHelper.DataLoaderCacheInfo cacheInfoByFilePath;
        int i;
        long iw = pVar.iw();
        if (pVar.mp()) {
            iw = 2147483647L;
        }
        int d2 = pVar.d();
        if (d2 > 0) {
            iw = d2;
            if (iw >= pVar.ig()) {
                j = 2147483647L;
                cacheInfoByFilePath = TTVideoEngine.getCacheInfoByFilePath(pVar.fw(), pVar.s());
                ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload: sourceType = ", 0, " preloadSize = ", Long.valueOf(j));
                if (cacheInfoByFilePath == null) {
                    i = (j != 2147483647L ? cacheInfoByFilePath.mCacheSizeFromZero < j : cacheInfoByFilePath.mCacheSizeFromZero < pVar.ig() && cacheInfoByFilePath.mCacheSizeFromZero < cacheInfoByFilePath.mMediaSize) ? 0 : 1;
                    ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload: cacheInfo.mCacheSizeFromZero = ", Long.valueOf(cacheInfoByFilePath.mCacheSizeFromZero), " cacheInfo.mMediaSize = ", Long.valueOf(cacheInfoByFilePath.mMediaSize), " sourceType = ", Integer.valueOf(i));
                } else {
                    i = 0;
                }
                pVar.kk(i);
                PreloaderURLItem preloaderURLItem = new PreloaderURLItem(pVar.fw(), null, j, new String[]{pVar.f()}, pVar.s());
                preloaderURLItem.setCallBackListener(new IPreLoaderItemCallBackListener() { // from class: com.bytedance.sdk.component.ig.d.d.dq.1
                    @Override // com.bykv.vk.component.ttvideo.IPreLoaderItemCallBackListener
                    public void preloadItemInfo(PreLoaderItemCallBackInfo preLoaderItemCallBackInfo) {
                        synchronized (dq.s) {
                            try {
                                if (preLoaderItemCallBackInfo == null) {
                                    return;
                                }
                                int key = preLoaderItemCallBackInfo.getKey();
                                ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload: callback key =", Integer.valueOf(key), "  fileHash =", pVar.fw());
                                if (key == 2) {
                                    dq.InterfaceC0005dq interfaceC0005dq2 = interfaceC0005dq;
                                    if (interfaceC0005dq2 != null) {
                                        interfaceC0005dq2.dq(pVar, preLoaderItemCallBackInfo.getKey());
                                    }
                                    dq.f1934d++;
                                } else if (key == 3) {
                                    dq.InterfaceC0005dq interfaceC0005dq3 = interfaceC0005dq;
                                    if (interfaceC0005dq3 != null) {
                                        interfaceC0005dq3.dq(pVar, preLoaderItemCallBackInfo.getKey(), AVErrorInfo.ERROR);
                                    }
                                    dq.ox++;
                                } else if (key == 5) {
                                    dq.InterfaceC0005dq interfaceC0005dq4 = interfaceC0005dq;
                                    if (interfaceC0005dq4 != null) {
                                        interfaceC0005dq4.d(pVar, preLoaderItemCallBackInfo.getKey());
                                    }
                                    dq.p++;
                                }
                                ox.dq("TTVideoPreloadImp", "preloadItemInfo:  preTime = ", Integer.valueOf(dq.dq), "  callback =", Integer.valueOf(dq.f1934d + dq.ox + dq.p), "  callback2 =", Integer.valueOf(dq.f1934d), "  callback3=", Integer.valueOf(dq.ox), "  callback5 =", Integer.valueOf(dq.p));
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                });
                ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload start: fileName = ", pVar.fw(), " url =", pVar.f(), " isH265=", Boolean.valueOf(pVar.q()), " presize=", Integer.valueOf(pVar.iw()), " path=", pVar.s());
                synchronized (s) {
                    dq++;
                }
                TTVideoEngine.addTask(preloaderURLItem);
                ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload end: fileName = ", pVar.fw());
                return;
            }
        }
        j = iw;
        cacheInfoByFilePath = TTVideoEngine.getCacheInfoByFilePath(pVar.fw(), pVar.s());
        ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload: sourceType = ", 0, " preloadSize = ", Long.valueOf(j));
        if (cacheInfoByFilePath == null) {
        }
        pVar.kk(i);
        PreloaderURLItem preloaderURLItem2 = new PreloaderURLItem(pVar.fw(), null, j, new String[]{pVar.f()}, pVar.s());
        preloaderURLItem2.setCallBackListener(new IPreLoaderItemCallBackListener() { // from class: com.bytedance.sdk.component.ig.d.d.dq.1
            @Override // com.bykv.vk.component.ttvideo.IPreLoaderItemCallBackListener
            public void preloadItemInfo(PreLoaderItemCallBackInfo preLoaderItemCallBackInfo) {
                synchronized (dq.s) {
                    try {
                        if (preLoaderItemCallBackInfo == null) {
                            return;
                        }
                        int key = preLoaderItemCallBackInfo.getKey();
                        ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload: callback key =", Integer.valueOf(key), "  fileHash =", pVar.fw());
                        if (key == 2) {
                            dq.InterfaceC0005dq interfaceC0005dq2 = interfaceC0005dq;
                            if (interfaceC0005dq2 != null) {
                                interfaceC0005dq2.dq(pVar, preLoaderItemCallBackInfo.getKey());
                            }
                            dq.f1934d++;
                        } else if (key == 3) {
                            dq.InterfaceC0005dq interfaceC0005dq3 = interfaceC0005dq;
                            if (interfaceC0005dq3 != null) {
                                interfaceC0005dq3.dq(pVar, preLoaderItemCallBackInfo.getKey(), AVErrorInfo.ERROR);
                            }
                            dq.ox++;
                        } else if (key == 5) {
                            dq.InterfaceC0005dq interfaceC0005dq4 = interfaceC0005dq;
                            if (interfaceC0005dq4 != null) {
                                interfaceC0005dq4.d(pVar, preLoaderItemCallBackInfo.getKey());
                            }
                            dq.p++;
                        }
                        ox.dq("TTVideoPreloadImp", "preloadItemInfo:  preTime = ", Integer.valueOf(dq.dq), "  callback =", Integer.valueOf(dq.f1934d + dq.ox + dq.p), "  callback2 =", Integer.valueOf(dq.f1934d), "  callback3=", Integer.valueOf(dq.ox), "  callback5 =", Integer.valueOf(dq.p));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
        ox.dq("TTVideoPreloadImp", "TTMediaPlayer execVideoPreload start: fileName = ", pVar.fw(), " url =", pVar.f(), " isH265=", Boolean.valueOf(pVar.q()), " presize=", Integer.valueOf(pVar.iw()), " path=", pVar.s());
        synchronized (s) {
        }
    }
}
