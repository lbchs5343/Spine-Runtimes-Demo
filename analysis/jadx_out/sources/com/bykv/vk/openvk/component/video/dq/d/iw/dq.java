package com.bykv.vk.openvk.component.video.dq.d.iw;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.iw.ox;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.dq.d.iw;
import com.bykv.vk.openvk.component.video.dq.d.s;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class dq {
    public static final boolean dq = ox.d();

    /* renamed from: d, reason: collision with root package name */
    private HashMap<String, Boolean> f537d;
    private C0008dq ox;

    public static class d {
        private static final dq dq = new dq();
    }

    /* renamed from: com.bykv.vk.openvk.component.video.dq.d.iw.dq$dq, reason: collision with other inner class name */
    public class C0008dq extends com.bytedance.sdk.component.o.p.ox {

        /* renamed from: d, reason: collision with root package name */
        private Queue<C0009dq> f538d;
        private boolean ox;
        private final Queue<C0009dq> p;
        private Queue<C0009dq> s;

        /* renamed from: com.bykv.vk.openvk.component.video.dq.d.iw.dq$dq$dq, reason: collision with other inner class name */
        public class C0009dq {

            /* renamed from: d, reason: collision with root package name */
            public String f539d;
            public int dq;
            public p iw;
            public String[] ox;
            public int p;
            public String s;

            public C0009dq() {
            }
        }

        public C0008dq() {
            super("VideoCachePreloader$PreLoadThread");
            this.p = new ArrayBlockingQueue(10);
            this.f538d = new LinkedBlockingQueue();
            this.ox = true;
            this.s = new LinkedBlockingQueue();
        }

        private synchronized void d(C0009dq c0009dq) {
            this.s.add(c0009dq);
            notify();
        }

        private C0009dq dq(int i, p pVar) {
            this.p.size();
            C0009dq poll = this.p.poll();
            if (poll == null) {
                poll = new C0009dq();
            }
            poll.dq = i;
            poll.iw = pVar;
            return poll;
        }

        private void dq() {
            while (true) {
                C0009dq poll = this.s.poll();
                if (poll == null) {
                    return;
                }
                poll.f539d = poll.iw.f();
                poll.ox = new String[]{poll.iw.f()};
                int d2 = poll.iw.d();
                if (d2 <= 0) {
                    d2 = poll.iw.iw();
                }
                poll.p = d2;
                poll.s = poll.iw.fw();
                if (!TextUtils.isEmpty(poll.iw.fw())) {
                    poll.f539d = poll.iw.fw();
                }
                poll.iw = null;
                ox(poll);
            }
        }

        private void dq(C0009dq c0009dq) {
            c0009dq.ox = null;
            c0009dq.f539d = null;
            c0009dq.dq = -1;
            c0009dq.iw = null;
            this.p.offer(c0009dq);
        }

        private void ox(C0009dq c0009dq) {
            if (c0009dq == null) {
                return;
            }
            this.f538d.offer(c0009dq);
            notify();
        }

        public void dq(p pVar) {
            d(dq(0, pVar));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.ox) {
                synchronized (this) {
                    try {
                        if (!this.s.isEmpty()) {
                            dq();
                        }
                        while (!this.f538d.isEmpty()) {
                            C0009dq poll = this.f538d.poll();
                            if (poll != null) {
                                int i = poll.dq;
                                if (i == 0) {
                                    String[] strArr = poll.ox;
                                    if (strArr != null && strArr.length > 0) {
                                        ArrayList arrayList = new ArrayList();
                                        for (String str : poll.ox) {
                                            if (com.bykv.vk.openvk.component.video.dq.ox.dq.dq(str)) {
                                                arrayList.add(str);
                                            }
                                        }
                                        com.bykv.vk.openvk.component.video.dq.d.p.ox().dq(false, !TextUtils.isEmpty(poll.s), poll.p, poll.f539d, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                    }
                                } else if (i == 1) {
                                    com.bykv.vk.openvk.component.video.dq.d.p.ox().dq(poll.f539d);
                                } else if (i == 2) {
                                    com.bykv.vk.openvk.component.video.dq.d.p.ox().p();
                                } else if (i == 3) {
                                    com.bykv.vk.openvk.component.video.dq.d.p.ox().p();
                                    if (s.d() != null) {
                                        s.d().dq();
                                    }
                                    if (s.dq() != null) {
                                        s.dq().dq();
                                    }
                                } else if (i == 4) {
                                    com.bykv.vk.openvk.component.video.dq.d.p.ox().p();
                                    this.ox = false;
                                }
                                dq(poll);
                            }
                        }
                        try {
                            wait();
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    } finally {
                    }
                }
            }
        }
    }

    private dq() {
        this.f537d = new HashMap<>();
        d();
    }

    public static dq dq() {
        return d.dq;
    }

    private static com.bykv.vk.openvk.component.video.dq.d.dq.ox ox() {
        com.bykv.vk.openvk.component.video.dq.d.dq.ox oxVar;
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.d(com.bykv.vk.openvk.component.video.api.ox.getContext()), "proxy_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        com.bykv.vk.openvk.component.video.dq.d.dq.ox oxVar2 = null;
        try {
            oxVar = new com.bykv.vk.openvk.component.video.dq.d.dq.ox(file);
        } catch (IOException e2) {
            e = e2;
        }
        try {
            oxVar.dq(104857600L);
            return oxVar;
        } catch (IOException e3) {
            e = e3;
            oxVar2 = oxVar;
            e.printStackTrace();
            return oxVar2;
        }
    }

    public String d(p pVar) {
        if (pVar == null) {
            return null;
        }
        boolean isEmpty = TextUtils.isEmpty(pVar.fw());
        return iw.dq().dq(false, !isEmpty, !isEmpty ? pVar.fw() : pVar.f(), pVar.f());
    }

    public boolean d() {
        if (this.ox != null) {
            return true;
        }
        com.bykv.vk.openvk.component.video.dq.d.dq.ox ox = ox();
        if (ox == null) {
            return false;
        }
        s.dq(true);
        s.d(true);
        s.dq(1);
        iw.dq().p();
        try {
            C0008dq c0008dq = new C0008dq();
            this.ox = c0008dq;
            c0008dq.setName("csj_video_cache_preloader");
            this.ox.start();
            s.dq(ox, com.bykv.vk.openvk.component.video.api.ox.getContext());
            com.bykv.vk.openvk.component.video.dq.d.p.ox();
            com.bykv.vk.openvk.component.video.dq.d.p.ox().dq(10485759);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean dq(p pVar) {
        if (!d()) {
            return false;
        }
        this.ox.dq(pVar);
        return true;
    }
}
