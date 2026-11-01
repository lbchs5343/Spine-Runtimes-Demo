package com.bytedance.sdk.component.dq;

import android.net.Uri;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.dq.i;
import com.bytedance.sdk.component.dq.le;
import com.bytedance.sdk.component.dq.no;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
class r {

    /* renamed from: d, reason: collision with root package name */
    private final Set<String> f1881d;
    private final Set<String> dq;
    private final le ox = fw.dq;
    private final i p;
    private no.d s;

    public r(i iVar, Set<String> set, Set<String> set2) {
        this.p = iVar;
        if (set == null || set.isEmpty()) {
            this.dq = new LinkedHashSet();
        } else {
            this.dq = new LinkedHashSet(set);
        }
        if (set2 == null || set2.isEmpty()) {
            this.f1881d = new LinkedHashSet();
        } else {
            this.f1881d = new LinkedHashSet(set2);
        }
    }

    private k dq(String str, d dVar, boolean z) {
        i iVar;
        if (!z || (iVar = this.p) == null) {
            return null;
        }
        i.ox dq = iVar.dq(str, this.dq);
        if (dq.ox.contains(dVar.dq())) {
            return null;
        }
        if (dq.f1870d.contains(dVar.dq())) {
            return k.PRIVATE;
        }
        if (dq.dq.compareTo(dVar.d()) < 0) {
            return null;
        }
        return dq.dq;
    }

    public final synchronized k d(String str, d dVar) {
        return dq(str, dVar, false);
    }

    public void d(le.dq dqVar) {
        le leVar = this.ox;
        if (leVar != null) {
            leVar.d(dqVar);
        }
    }

    @MainThread
    public final synchronized k dq(String str, d dVar) throws i.dq {
        return dq(str, dVar, true);
    }

    @MainThread
    public final synchronized k dq(boolean z, String str, d dVar) throws i.dq {
        no.d dVar2;
        try {
            Uri parse = Uri.parse(str);
            String host = parse.getHost();
            if (host == null) {
                return null;
            }
            k kVar = this.f1881d.contains(dVar.dq()) ? k.PUBLIC : null;
            for (String str2 : this.dq) {
                if (parse.getHost().equals(str2) || host.endsWith(".".concat(String.valueOf(str2)))) {
                    kVar = k.PRIVATE;
                    break;
                }
            }
            if (kVar == null && (dVar2 = this.s) != null && dVar2.dq(str)) {
                if (this.s.dq(str, dVar.dq())) {
                    return null;
                }
                kVar = k.PRIVATE;
            }
            k dq = z ? dq(str, dVar) : d(str, dVar);
            return dq != null ? dq : kVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(le.dq dqVar) {
        le leVar = this.ox;
        if (leVar != null) {
            leVar.dq(dqVar);
        }
    }

    public void dq(no.d dVar) {
        this.s = dVar;
    }
}
