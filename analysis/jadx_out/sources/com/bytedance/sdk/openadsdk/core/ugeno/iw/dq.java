package com.bytedance.sdk.openadsdk.core.ugeno.iw;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.dq.d.ox;
import com.bytedance.sdk.component.adexpress.dq.d.p;
import com.bytedance.sdk.component.adexpress.dq.ox.dq;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.ugeno.mn.d;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends ox {
    private static volatile dq dq;
    private static volatile File ox;
    private static AtomicReference<d> s = new AtomicReference<>(null);

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f3594d = new AtomicBoolean(false);
    private AtomicBoolean p = new AtomicBoolean(false);

    public static dq d() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private File d(String str) {
        d dVar;
        if (!ia() || (dVar = s.get()) == null) {
            return null;
        }
        Iterator<dq.C0104dq> it = dVar.getResources().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            dq.C0104dq next = it.next();
            if (next.dq() != null && next.dq().equals(str)) {
                File file = new File(dq(), s.d(next.dq()));
                String dq2 = s.dq(file);
                if (next.d() == null || !next.d().equals(dq2)) {
                    break;
                }
                return file;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                if (s.get() != null) {
                    return;
                }
                File file = new File(dq(), "package_ugen_temp.json");
                long length = file.length();
                Long valueOf = Long.valueOf(length);
                if (length > 0 && file.exists() && file.isFile()) {
                    byte[] bArr = new byte[valueOf.intValue()];
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        s.set(d.d(new JSONObject(new String(bArr, "utf-8"))));
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            ig.d("PlayComponentEngineCacheManager", "version init error", th);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                                return;
                            }
                            return;
                        } catch (Throwable th3) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th3;
                        }
                    }
                }
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
            } catch (Throwable th4) {
                fileInputStream = null;
                th = th4;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public WebResourceResponse dq(WebView webView, kk.dq dqVar, String str) {
        File d2;
        try {
            if (TextUtils.isEmpty(str) || dqVar == kk.dq.IMAGE || (d2 = d(str)) == null) {
                return null;
            }
            return new WebResourceResponse(dqVar.getType(), "utf-8", new FileInputStream(d2));
        } catch (Throwable th) {
            ig.d("PlayComponentEngineCacheManager", "grwe", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dq.d.ox
    public File dq() {
        if (ox == null) {
            try {
                File file = new File(new File(p.dq(), "tt_ugen_pkg"), "engine");
                file.mkdirs();
                ox = file;
            } catch (Throwable th) {
                ig.d("PlayComponentEngineCacheManager", "ge", th);
            }
        }
        return ox;
    }

    public boolean ia() {
        AtomicBoolean atomicBoolean = this.p;
        return atomicBoolean != null && atomicBoolean.get();
    }

    public void iw() {
        try {
            s();
            File dq2 = dq();
            if (dq2 == null || !dq2.exists()) {
                return;
            }
            if (dq2.getParentFile() != null) {
                iw.ox(dq2.getParentFile());
            } else {
                iw.ox(dq2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void mn() {
        d dVar = s.get();
        if (dVar == null || !dVar.iw()) {
            return;
        }
        boolean dq2 = dq(dVar.getResources());
        if (!dq2) {
            s();
        }
        this.p.set(dq2);
    }

    public void ox() {
        mn.dq(new com.bytedance.sdk.component.o.kk("enginecache-init") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.iw.dq.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    dq.this.kk();
                    dq.this.mn();
                    dq.this.p();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void p() {
        try {
            if (this.f3594d.get()) {
                return;
            }
            boolean z = true;
            this.f3594d.set(true);
            d dVar = new d(wp.dq().dq(2));
            d dVar2 = s.get();
            if (!dVar.iw()) {
                this.f3594d.set(false);
                return;
            }
            if (!ox.dq(dVar2, dVar.ox())) {
                this.f3594d.set(false);
                return;
            }
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.iw.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.adexpress.s.s.dq().d();
                }
            });
            List<dq.C0104dq> d2 = d(dVar, dVar2);
            if (d2 == null) {
                z = false;
            }
            if (d2 == null) {
                this.f3594d.set(false);
            }
            if (z && dq(dVar.getResources())) {
                s.set(dVar);
                ox.dq(dq(), s.get(), "package_ugen_temp.json");
                d(d2);
            }
            mn();
            this.f3594d.set(false);
        } catch (Throwable unused) {
        }
    }

    public void s() {
        ox.d(dq(), s.get(), "package_ugen_temp.json");
        s.set(null);
    }
}
