package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private boolean f9274d;
    private final Queue<Integer> dq;
    private Handler iw;
    private Runnable mn;
    private long ox;
    private long p;
    private SoftReference<JumpUnknownSourceActivity> s;

    public static class dq {
        private static final ia dq = new ia();
    }

    private ia() {
        this.dq = new ArrayDeque();
        this.f9274d = false;
        this.iw = new Handler(Looper.getMainLooper());
        this.mn = new Runnable() { // from class: com.ss.android.socialbase.appdownloader.ia.1
            @Override // java.lang.Runnable
            public void run() {
                ia.this.ox();
            }
        };
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(new dq.InterfaceC0248dq() { // from class: com.ss.android.socialbase.appdownloader.ia.2
            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void d() {
                boolean hasCallbacks;
                if (ia.this.dq.isEmpty()) {
                    return;
                }
                long dq2 = com.ss.android.socialbase.downloader.mn.dq.ox().dq("install_on_resume_install_interval", 120000L);
                long currentTimeMillis = System.currentTimeMillis() - ia.this.p;
                if (currentTimeMillis >= dq2) {
                    ia.this.p = System.currentTimeMillis();
                    ia.this.ox();
                } else {
                    hasCallbacks = ia.this.iw.hasCallbacks(ia.this.mn);
                    if (hasCallbacks) {
                        return;
                    }
                    ia.this.iw.postDelayed(ia.this.mn, dq2 - currentTimeMillis);
                }
            }

            @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
            public void ox() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d(Context context, int i, boolean z) {
        int d2 = ox.d(context, i, z);
        if (d2 == 1) {
            this.f9274d = true;
        }
        this.ox = System.currentTimeMillis();
        return d2;
    }

    public static ia dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        final Integer poll;
        if (Build.VERSION.SDK_INT < 29 || com.ss.android.socialbase.downloader.dq.dq.dq().d()) {
            synchronized (this.dq) {
                poll = this.dq.poll();
            }
            this.iw.removeCallbacks(this.mn);
            if (poll == null) {
                this.f9274d = false;
                return;
            }
            final Context ob = com.ss.android.socialbase.downloader.downloader.ox.ob();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.iw.post(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.ia.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ia.this.d(ob, poll.intValue(), false);
                    }
                });
            } else {
                d(ob, poll.intValue(), false);
            }
            this.iw.postDelayed(this.mn, 20000L);
        }
    }

    private boolean p() {
        return System.currentTimeMillis() - this.ox < 1000;
    }

    public JumpUnknownSourceActivity d() {
        SoftReference<JumpUnknownSourceActivity> softReference = this.s;
        JumpUnknownSourceActivity jumpUnknownSourceActivity = softReference == null ? null : softReference.get();
        this.s = null;
        return jumpUnknownSourceActivity;
    }

    public int dq(final Context context, final int i, final boolean z) {
        if (z) {
            return d(context, i, z);
        }
        if (p()) {
            this.iw.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.ia.4
                @Override // java.lang.Runnable
                public void run() {
                    ia.this.dq(context, i, z);
                }
            }, 1000L);
            return 1;
        }
        if (com.ss.android.socialbase.downloader.dq.dq.dq().d()) {
            com.ss.android.socialbase.downloader.ox.dq.ox("leaves", "on Foreground");
            return d(context, i, z);
        }
        if (d.dq()) {
            return 1;
        }
        boolean z2 = Build.VERSION.SDK_INT < 29;
        if (this.dq.isEmpty() && !this.f9274d && z2) {
            return d(context, i, z);
        }
        int dq2 = com.ss.android.socialbase.downloader.mn.dq.ox().dq("install_queue_size", 3);
        synchronized (this.dq) {
            while (this.dq.size() > dq2) {
                try {
                    this.dq.poll();
                } finally {
                }
            }
        }
        if (z2) {
            this.iw.removeCallbacks(this.mn);
            this.iw.postDelayed(this.mn, com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("install_queue_timeout", 20000L));
        }
        synchronized (this.dq) {
            try {
                if (!this.dq.contains(Integer.valueOf(i))) {
                    this.dq.offer(Integer.valueOf(i));
                }
            } finally {
            }
        }
        return 1;
    }

    public void dq(JumpUnknownSourceActivity jumpUnknownSourceActivity) {
        this.s = new SoftReference<>(jumpUnknownSourceActivity);
    }

    public void dq(DownloadInfo downloadInfo, String str) {
        if (downloadInfo == null || TextUtils.isEmpty(str)) {
            return;
        }
        ox();
    }
}
