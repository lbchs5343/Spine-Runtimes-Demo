package com.ss.android.socialbase.downloader.ia;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public final class s implements Handler.Callback {
    private volatile Handler dq = new Handler(dq.dq, this);

    public interface d {
        long dq();
    }

    public static class dq {
        private static final Looper dq;

        static {
            HandlerThread handlerThread = new HandlerThread("DownloadWatchDog");
            handlerThread.start();
            dq = handlerThread.getLooper();
        }
    }

    public static Looper dq() {
        return dq.dq;
    }

    public void d() {
        Handler handler = this.dq;
        if (handler == null) {
            return;
        }
        this.dq = null;
        handler.removeCallbacksAndMessages(null);
    }

    public void dq(d dVar, long j) {
        Handler handler = this.dq;
        if (handler == null) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 0;
        obtain.obj = dVar;
        handler.sendMessageDelayed(obtain, j);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            return true;
        }
        try {
            d dVar = (d) message.obj;
            long dq2 = dVar.dq();
            if (dq2 <= 0) {
                return true;
            }
            dq(dVar, dq2);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }
}
