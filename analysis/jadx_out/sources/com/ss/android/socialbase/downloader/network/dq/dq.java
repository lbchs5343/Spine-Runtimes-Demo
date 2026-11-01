package com.ss.android.socialbase.downloader.network.dq;

import com.ss.android.socialbase.downloader.kk.iw;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, ox> f9452d;
    protected int dq;
    private final Map<String, p> ox;

    /* renamed from: com.ss.android.socialbase.downloader.network.dq.dq$dq, reason: collision with other inner class name */
    public static final class C0254dq {
        private static final dq dq = new dq();
    }

    private dq() {
        this.f9452d = new HashMap();
        this.ox = new LinkedHashMap(3);
        this.dq = 3;
    }

    public static dq dq() {
        return C0254dq.dq;
    }

    public p d(String str, List<com.ss.android.socialbase.downloader.model.ox> list) {
        p remove;
        synchronized (this.ox) {
            remove = this.ox.remove(str);
        }
        if (remove == null) {
            return null;
        }
        if (iw.dq(remove.iw(), list)) {
            try {
                remove.s();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            if (remove.ia() && remove.mn()) {
                return remove;
            }
        }
        try {
            remove.p();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public ox dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list) {
        ox remove;
        synchronized (this.f9452d) {
            remove = this.f9452d.remove(str);
        }
        if (remove == null) {
            return null;
        }
        if (iw.dq(remove.ia(), list)) {
            try {
                remove.p();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            if (remove.iw() && remove.s()) {
                return remove;
            }
        }
        try {
            remove.ox();
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(String str, ox oxVar) {
        synchronized (this.f9452d) {
            this.f9452d.put(str, oxVar);
        }
    }

    public boolean dq(String str) {
        ox oxVar = this.f9452d.get(str);
        if (oxVar != null) {
            if (oxVar.mn()) {
                return true;
            }
            if (oxVar.iw() && oxVar.s()) {
                return true;
            }
        }
        return false;
    }
}
