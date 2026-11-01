package com.bytedance.sdk.openadsdk.core.playable;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.h;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private String f3396d;
    private Map<j, d> ox = awf.ab();
    private Map<String, JSONObject> p = awf.ab();
    private AtomicBoolean s = new AtomicBoolean(false);
    private Set<String> iw = Collections.synchronizedSet(new HashSet());
    private Handler mn = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.sdk.openadsdk.core.playable.dq$1, reason: invalid class name */
    public class AnonymousClass1 extends kk {
        final /* synthetic */ dq dq;

        @Override // java.lang.Runnable
        public void run() {
            File[] listFiles;
            try {
                String d2 = this.dq.d();
                if (!TextUtils.isEmpty(d2)) {
                    File file = new File(d2);
                    if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                        for (File file2 : listFiles) {
                            try {
                                this.dq.dq(this.dq.dq(file2), true);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            this.dq.s.set(true);
        }
    }

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        long f3400d;
        long dq;
        long ox;
        long p;

        private d() {
        }

        public /* synthetic */ d(AnonymousClass1 anonymousClass1) {
            this();
        }

        public long d() {
            return this.p - this.ox;
        }

        public d d(long j) {
            this.f3400d = j;
            return this;
        }

        public long dq() {
            return this.f3400d - this.dq;
        }

        public d dq(long j) {
            this.dq = j;
            return this;
        }

        public d ox(long j) {
            this.ox = j;
            return this;
        }

        public d p(long j) {
            this.p = j;
            return this;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.playable.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0180dq {
        void dq(boolean z);
    }

    private dq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        File file = new File(ox(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    private boolean d(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    public static dq dq() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public File dq(File file) {
        File file2 = new File(file, "new_tt_open_ad_sdk_check_res.dat");
        return d(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject dq(File file, boolean z) {
        byte[] p;
        try {
            if (!d(file) || (p = com.bytedance.sdk.component.utils.iw.p(file)) == null || p.length <= 0) {
                return null;
            }
            String ox = TextUtils.equals(file.getName(), "new_tt_open_ad_sdk_check_res.dat") ? com.bytedance.sdk.component.utils.dq.ox(new String(p)) : com.bytedance.sdk.component.s.dq.dq(new String(p), com.bytedance.sdk.openadsdk.core.dq.dq());
            if (TextUtils.isEmpty(ox)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(ox);
            if (z && jSONObject.length() > 0) {
                this.p.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final InterfaceC0180dq interfaceC0180dq, final boolean z) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (interfaceC0180dq != null) {
                interfaceC0180dq.dq(z);
            }
        } else if (interfaceC0180dq != null) {
            this.mn.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.playable.dq.3
                @Override // java.lang.Runnable
                public void run() {
                    InterfaceC0180dq interfaceC0180dq2 = interfaceC0180dq;
                    if (interfaceC0180dq2 != null) {
                        interfaceC0180dq2.dq(z);
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:7:0x0008, B:9:0x0014, B:12:0x0030, B:13:0x0038, B:15:0x0045, B:16:0x0048, B:18:0x001d, B:20:0x0027), top: B:6:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String ox() {
        File ox;
        File file;
        if (TextUtils.isEmpty(this.f3396d)) {
            try {
                if (!"mounted".equals(com.bytedance.sdk.openadsdk.h.ox.dq())) {
                    if (!Environment.isExternalStorageRemovable()) {
                    }
                    ox = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext());
                    file = new File(ox, "playable");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    this.f3396d = file.getAbsolutePath();
                }
                if (com.bytedance.sdk.openadsdk.api.plugin.d.ox(wp.getContext()) != null) {
                    ox = com.bytedance.sdk.openadsdk.api.plugin.d.ox(wp.getContext());
                    file = new File(ox, "playable");
                    if (!file.exists()) {
                    }
                    this.f3396d = file.getAbsolutePath();
                }
                ox = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext());
                file = new File(ox, "playable");
                if (!file.exists()) {
                }
                this.f3396d = file.getAbsolutePath();
            } catch (Throwable th) {
                ig.p("PlayableCache", "init root path error: ".concat(String.valueOf(th)));
            }
        }
        return this.f3396d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(File file) {
        p(file);
        try {
            no.ia().bl().dq(file);
        } catch (Throwable unused) {
        }
    }

    private void p(File file) {
        try {
            if (file.exists()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (file.setLastModified(currentTimeMillis)) {
                    return;
                }
                file.renameTo(file);
                if (file.lastModified() < currentTimeMillis) {
                    ig.d("PlayableCache", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private boolean s(File file) {
        String[] list;
        if (file == null || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
            return false;
        }
        return Arrays.asList(list).contains("index.html");
    }

    public void dq(final j jVar, final InterfaceC0180dq interfaceC0180dq) {
        AnonymousClass1 anonymousClass1 = null;
        if (TextUtils.isEmpty(l.iw(jVar))) {
            com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, -701, (String) null);
            dq(interfaceC0180dq, false);
            return;
        }
        final String iw = l.iw(jVar);
        if (this.iw.contains(iw)) {
            return;
        }
        this.ox.put(jVar, new d(anonymousClass1).dq(System.currentTimeMillis()));
        com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar);
        String d2 = com.bytedance.sdk.component.utils.s.d(iw);
        final File file = new File(d(), d2);
        if (s(file)) {
            com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, -702, (String) null);
            p(file);
            this.ox.remove(jVar);
            dq(interfaceC0180dq, true);
            return;
        }
        try {
            com.bytedance.sdk.component.utils.iw.ox(file);
        } catch (Throwable unused) {
        }
        this.iw.add(iw);
        File file2 = new File(ox(), awf.c(d2, ".zip"));
        com.bytedance.sdk.component.kk.d.d p = com.bytedance.sdk.openadsdk.core.le.s.dq().d().p();
        p.dq(iw);
        p.dq(file2.getParent(), file2.getName());
        p.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.playable.dq.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, final com.bytedance.sdk.component.kk.d dVar) {
                dq.this.iw.remove(iw);
                final d dVar2 = (d) dq.this.ox.remove(jVar);
                if (dVar2 != null) {
                    dVar2.d(System.currentTimeMillis());
                }
                if (dVar.ia() && dVar.mn() != null && dVar.mn().exists()) {
                    ig.dq("PlayableCache", "onResponse: Playable zip download success");
                    com.bytedance.sdk.component.o.mn.dq(new kk("downloadZip") { // from class: com.bytedance.sdk.openadsdk.core.playable.dq.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            boolean z;
                            long j;
                            long j2;
                            try {
                                d dVar3 = dVar2;
                                if (dVar3 != null) {
                                    dVar3.ox(System.currentTimeMillis());
                                }
                                h.dq(dVar.mn().getAbsolutePath(), dq.this.d());
                                d dVar4 = dVar2;
                                if (dVar4 != null) {
                                    dVar4.p(System.currentTimeMillis());
                                }
                                d dVar5 = dVar2;
                                if (dVar5 != null) {
                                    j = dVar5.dq();
                                    j2 = dVar2.d();
                                } else {
                                    j = 0;
                                    j2 = 0;
                                }
                                com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, j, j2);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                dq.this.ox(file);
                                z = true;
                                try {
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    dq.this.dq(dq.this.dq(file), true);
                                } catch (Throwable unused2) {
                                }
                            } catch (Throwable th) {
                                ig.d("PlayableCache", "unzip error: ", th);
                                com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, -704, th.getMessage());
                                z = false;
                            }
                            try {
                                dVar.mn().delete();
                            } catch (Throwable unused3) {
                            }
                            AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                            dq.this.dq(interfaceC0180dq, z);
                        }
                    }, 5);
                } else {
                    com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, dVar.dq() != 0 ? dVar.dq() : -700, (String) null);
                    ig.dq("PlayableCache", "onResponse: Playable zip download fail");
                    dq.this.dq(interfaceC0180dq, false);
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                dq.this.iw.remove(iw);
                dq.this.ox.remove(jVar);
                com.bytedance.sdk.openadsdk.core.playable.d.dq(wp.getContext(), jVar, -700, iOException.getMessage());
                dq.this.dq(interfaceC0180dq, false);
                ig.dq("PlayableCache", "onFailure: Playable zip download fail");
            }
        });
    }

    public boolean dq(j jVar) {
        if (!this.s.get() || TextUtils.isEmpty(l.iw(jVar))) {
            return false;
        }
        try {
            String d2 = com.bytedance.sdk.component.utils.s.d(l.iw(jVar));
            if (this.p.get(d2) == null) {
                return false;
            }
            return s(new File(d(), d2));
        } catch (Throwable unused) {
            return false;
        }
    }
}
