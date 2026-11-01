package com.bytedance.sdk.component.ia.d;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.ia.dq.iw;
import com.bytedance.sdk.component.ia.dq.kk;
import com.bytedance.sdk.component.ia.dq.mn;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import com.bytedance.sdk.component.utils.fw;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements mn {
    private static volatile com.bytedance.sdk.component.ia.dq.dq.dq p;

    /* renamed from: d, reason: collision with root package name */
    private Context f1882d;
    private s dq;
    private kk ox;

    public d() {
    }

    public d(com.bytedance.sdk.component.ia.dq.dq dqVar) {
        dq(dqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        if (i == 0 || i == 2) {
            com.bytedance.sdk.component.ia.d.d.d.dq.d(this.dq);
        } else if (i == 1) {
            com.bytedance.sdk.component.ia.d.d.d.d.ox(this.dq);
        }
    }

    private void d(final com.bytedance.sdk.component.ia.dq.d dVar) {
        s sVar = this.dq;
        if (sVar == null || this.ox == null) {
            Log.e("log_error", "dispatch event configManager is null");
            return;
        }
        final p p2 = sVar.p();
        if (dVar == null || p2 == null || this.dq.getContext() == null || p2.ia() == null) {
            return;
        }
        if (!this.dq.no()) {
            this.ox.dq(dVar);
            return;
        }
        if (dq(this.dq.getContext(), p2)) {
            this.ox.dq(dVar);
            return;
        }
        kk();
        if (kk()) {
            p2.ia().execute(new com.bytedance.sdk.component.ia.d.s.d("dispatchEvent") { // from class: com.bytedance.sdk.component.ia.d.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq(dVar, p2.o());
                }
            });
        } else {
            dq(dVar, p2.o());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        if (i == 0 || i == 2) {
            com.bytedance.sdk.component.ia.d.d.d.dq.dq(this.dq);
        } else if (i == 1) {
            com.bytedance.sdk.component.ia.d.d.d.d.d(this.dq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.ia.dq.d dVar, int i) {
        if (i == 0 || i == 2) {
            com.bytedance.sdk.component.ia.d.d.d.dq.dq(dVar, this.dq);
        } else if (i == 1) {
            com.bytedance.sdk.component.ia.d.d.d.d.dq(dVar, this.dq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, int i) {
        if (i == 0) {
            com.bytedance.sdk.component.ia.d.d.d.dq.dq(str, this.dq);
        } else if (i == 1) {
            com.bytedance.sdk.component.ia.d.d.d.d.dq(str, this.dq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, List<String> list, boolean z, int i, JSONObject jSONObject) {
        if (i == 0) {
            com.bytedance.sdk.component.ia.d.d.d.dq.dq(str, list, z, this.dq, jSONObject);
        } else if (i == 1) {
            com.bytedance.sdk.component.ia.d.d.d.d.dq(str, list, z, this.dq);
        }
    }

    private boolean dq(Context context, p pVar) {
        if (context == null || pVar == null) {
            return false;
        }
        if (pVar.o() == 1) {
            return pVar.mp();
        }
        try {
            return fw.dq(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public static com.bytedance.sdk.component.ia.dq.dq.dq ia() {
        if (p == null) {
            synchronized (d.class) {
                try {
                    if (p == null) {
                        p = new com.bytedance.sdk.component.ia.d.s.dq();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    private boolean kk() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void d() {
        final p p2;
        s sVar = this.dq;
        if (sVar == null || (p2 = sVar.p()) == null || this.dq.getContext() == null || p2.ia() == null) {
            return;
        }
        if (!this.dq.no()) {
            kk kkVar = this.ox;
            if (kkVar != null) {
                kkVar.d();
                return;
            }
            return;
        }
        if (dq(this.dq.getContext(), p2)) {
            kk kkVar2 = this.ox;
            if (kkVar2 != null) {
                kkVar2.d();
                return;
            }
            return;
        }
        if (kk()) {
            p2.ia().execute(new com.bytedance.sdk.component.ia.d.s.d("stop") { // from class: com.bytedance.sdk.component.ia.d.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.d(p2.o());
                }
            });
        } else {
            d(p2.o());
        }
    }

    public void d(s sVar) {
        this.dq = sVar;
        this.f1882d = sVar.getContext();
        this.ox = new com.bytedance.sdk.component.ia.d.d.d(this.dq);
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq() {
        final p p2;
        s sVar = this.dq;
        if (sVar == null || (p2 = sVar.p()) == null || this.dq.getContext() == null || p2.ia() == null) {
            return;
        }
        if (!this.dq.no()) {
            kk kkVar = this.ox;
            if (kkVar != null) {
                kkVar.dq();
                return;
            }
            return;
        }
        if (dq(this.dq.getContext(), p2)) {
            kk kkVar2 = this.ox;
            if (kkVar2 != null) {
                kkVar2.dq();
                return;
            }
            return;
        }
        if (kk()) {
            p2.ia().execute(new com.bytedance.sdk.component.ia.d.s.d("start") { // from class: com.bytedance.sdk.component.ia.d.d.1
                @Override // java.lang.Runnable
                public void run() {
                    s unused = d.this.dq;
                    d.this.dq(p2.o());
                }
            });
        } else {
            dq(p2.o());
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        d(dVar);
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq(iw iwVar) {
        s sVar = this.dq;
        if (sVar != null) {
            if (iwVar == null) {
                iwVar = com.bytedance.sdk.component.ia.d.dq.dq.dq.d.dq;
            }
            sVar.dq(iwVar);
        }
    }

    public void dq(s sVar) {
        d(sVar);
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq(final String str) {
        s sVar = this.dq;
        if (sVar == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("log_error", "trackFailedUrls configManager is null", sVar);
            return;
        }
        final p p2 = sVar.p();
        if (p2 == null || this.dq.getContext() == null || p2.ia() == null || !p2.iw()) {
            return;
        }
        if (p2.o() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        if (!this.dq.no() || dq(this.dq.getContext(), p2)) {
            com.bytedance.sdk.component.ia.d.iw.dq.dq(this.dq).dq(str);
        } else if (kk()) {
            p2.ia().execute(new com.bytedance.sdk.component.ia.d.s.d("trackFailed") { // from class: com.bytedance.sdk.component.ia.d.d.5
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq(str, p2.o());
                }
            });
        } else {
            dq(str, p2.o());
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq(final String str, final List<String> list, final boolean z, Map<String, String> map, final JSONObject jSONObject) {
        s sVar = this.dq;
        if (sVar == null) {
            Log.e("log_error", "track configManager is null");
            return;
        }
        final p p2 = sVar.p();
        if (p2 == null || this.dq.getContext() == null || p2.ia() == null || !p2.iw()) {
            return;
        }
        if (p2.o() == 1) {
            if (list == null || list.isEmpty()) {
                return;
            }
        } else if (p2.o() == 0 && (TextUtils.isEmpty(str) || list == null || list.isEmpty())) {
            return;
        }
        if (!this.dq.no() || dq(this.dq.getContext(), p2)) {
            com.bytedance.sdk.component.ia.d.iw.dq.dq(this.dq).dq(str, list, z, map, jSONObject);
        } else if (kk()) {
            p2.ia().execute(new com.bytedance.sdk.component.ia.d.s.d("trackFailed") { // from class: com.bytedance.sdk.component.ia.d.d.4
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq(str, (List<String>) list, z, p2.o(), jSONObject);
                }
            });
        } else {
            dq(str, list, z, p2.o(), jSONObject);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void dq(boolean z) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq(z);
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public kk iw() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public p mn() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar.p();
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void ox() {
        kk kkVar = this.ox;
        if (kkVar != null) {
            kkVar.ox();
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public void p() {
        com.bytedance.sdk.component.ia.d.iw.dq.dq(this.dq);
    }

    @Override // com.bytedance.sdk.component.ia.dq.mn
    public s s() {
        s sVar = this.dq;
        if (sVar == null) {
            return null;
        }
        return sVar;
    }
}
