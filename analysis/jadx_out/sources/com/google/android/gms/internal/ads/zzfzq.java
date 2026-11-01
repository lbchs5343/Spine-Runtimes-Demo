package com.google.android.gms.internal.ads;

import g.bfc;
import g.bjv;
import g.fqf;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzfzq {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f8232a;

    /* renamed from: b, reason: collision with root package name */
    public int f8233b;

    /* renamed from: c, reason: collision with root package name */
    public bjv f8234c;

    public zzfzq() {
        this(4);
    }

    public zzfzq(int i) {
        this.f8232a = new Object[i + i];
        this.f8233b = 0;
    }

    public final zzfzq zza(Object obj, Object obj2) {
        int i = this.f8233b + 1;
        Object[] objArr = this.f8232a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.f8232a = Arrays.copyOf(objArr, zzfzi.a(length, i2));
        }
        bfc.ah(obj, obj2);
        Object[] objArr2 = this.f8232a;
        int i3 = this.f8233b;
        int i4 = i3 + i3;
        objArr2[i4] = obj;
        objArr2[i4 + 1] = obj2;
        this.f8233b = i3 + 1;
        return this;
    }

    public final zzfzq zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() + this.f8233b;
            Object[] objArr = this.f8232a;
            int length = objArr.length;
            int i = size + size;
            if (i > length) {
                this.f8232a = Arrays.copyOf(objArr, zzfzi.a(length, i));
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfzr zzc() {
        bjv bjvVar = this.f8234c;
        if (bjvVar != null) {
            throw bjvVar.d();
        }
        fqf k = fqf.k(this.f8233b, this.f8232a, this);
        bjv bjvVar2 = this.f8234c;
        if (bjvVar2 == null) {
            return k;
        }
        throw bjvVar2.d();
    }
}
