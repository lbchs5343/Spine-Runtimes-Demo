package com.bytedance.msdk.iw;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.s.iw;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static volatile dq f1113d;
    private static Context dq;
    private static volatile dq ox;

    public static class dq {
        private final Handler dq;
        private final long ia;
        private final int iw;
        private final JSONObject mn;
        private Map<String, Object> o;
        private final String ox;
        private final long p;
        private final int s;

        /* renamed from: d, reason: collision with root package name */
        private volatile boolean f1114d = false;
        private int kk = 0;

        public dq(String str, long j, long j2, int i, int i2, JSONObject jSONObject, Map<String, Object> map) {
            this.ia = j == -1 ? System.currentTimeMillis() : j;
            this.ox = str;
            this.p = j2;
            this.s = i;
            this.iw = i2;
            this.mn = jSONObject;
            this.o = map;
            this.dq = new Handler(Looper.getMainLooper());
        }

        public static /* synthetic */ int d(dq dqVar) {
            int i = dqVar.kk;
            dqVar.kk = i + 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq() {
            this.dq.postDelayed(new Runnable() { // from class: com.bytedance.msdk.iw.p.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.d(dq.this);
                    if (dq.this.kk >= 5 || p.dq()) {
                        dq.this.dq(1);
                        return;
                    }
                    com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- 重试一次 eventType:" + dq.this.ox + ", 重试次数：" + dq.this.kk);
                    dq.this.dq();
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00a1 A[Catch: all -> 0x003e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x003e, blocks: (B:3:0x0001, B:9:0x000e, B:11:0x0012, B:12:0x0065, B:23:0x0090, B:24:0x00a1, B:27:0x0076, B:30:0x0080, B:35:0x0044), top: B:2:0x0001 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public synchronized void dq(int i) {
            char c2;
            try {
                this.dq.removeCallbacksAndMessages(null);
                if (this.f1114d) {
                    return;
                }
                this.f1114d = true;
                if (i == 1) {
                    com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- 最终上报：eventType:" + this.ox + ", 重试次数：" + this.kk + ", did: " + p.ox());
                } else if (i == 2) {
                    com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- 最终上报：eventType:" + this.ox + ", 从applog回调中上报, did: " + p.ox());
                }
                String str = this.ox;
                int hashCode = str.hashCode();
                if (hashCode != -834688111) {
                    if (hashCode == 270071285 && str.equals("sdk_init")) {
                        c2 = 0;
                        if (c2 != 0) {
                            iw.dq(this.ia);
                            return;
                        } else {
                            if (c2 == 1) {
                                iw.dq(this.p, this.s, this.iw, this.ia, this.mn, this.o);
                            }
                            return;
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                } else {
                    if (str.equals("sdk_init_end")) {
                        c2 = 1;
                        if (c2 != 0) {
                        }
                    }
                    c2 = 65535;
                    if (c2 != 0) {
                    }
                }
            } finally {
            }
        }
    }

    public static void dq(long j) {
        dq dqVar = new dq("sdk_init", j, 0L, 0, 0, null, null);
        f1113d = dqVar;
        dqVar.dq();
    }

    public static void dq(long j, int i, int i2, JSONObject jSONObject, Map<String, Object> map) {
        dq dqVar = new dq("sdk_init_end", -1L, j, i, i2, jSONObject, map);
        ox = dqVar;
        dqVar.dq();
    }

    public static void dq(Context context) {
        dq = context;
    }

    public static boolean dq() {
        return !TextUtils.isEmpty(e.dq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ox() {
        return e.dq();
    }
}
