package com.google.android.gms.internal.ads;

import g.cqp;
import g.cvh;
import g.gs;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfzs extends cvh {

    /* renamed from: b, reason: collision with root package name */
    public Object[] f8238b;

    /* renamed from: c, reason: collision with root package name */
    public int f8239c;

    public zzfzs() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfzi
    public final /* bridge */ /* synthetic */ zzfzi zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzfzs zzf(Object obj) {
        obj.getClass();
        if (this.f8238b != null) {
            int q = zzfzt.q(this.f13581e);
            Object[] objArr = this.f8238b;
            if (q <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int aa = gs.aa(hashCode);
                while (true) {
                    int i = aa & length;
                    Object[] objArr2 = this.f8238b;
                    Object obj2 = objArr2[i];
                    if (obj2 == null) {
                        objArr2[i] = obj;
                        this.f8239c += hashCode;
                        zza(obj);
                        return this;
                    }
                    if (obj2.equals(obj)) {
                        return this;
                    }
                    aa = i + 1;
                }
            }
        }
        this.f8238b = null;
        zza(obj);
        return this;
    }

    public final zzfzs zzg(Object... objArr) {
        if (this.f8238b != null) {
            for (int i = 0; i < 2; i++) {
                zzf(objArr[i]);
            }
            return this;
        }
        zzgay.a(2, objArr);
        g(2);
        System.arraycopy(objArr, 0, this.f13580d, this.f13581e, 2);
        this.f13581e += 2;
        return this;
    }

    public final zzfzs zzh(Iterable iterable) {
        iterable.getClass();
        if (this.f8238b == null) {
            zzc(iterable);
            return this;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzf(it.next());
        }
        return this;
    }

    public final zzfzt zzi() {
        zzfzt p;
        int i = this.f13581e;
        if (i == 0) {
            return r.f3974b;
        }
        if (i == 1) {
            Object obj = this.f13580d[0];
            Objects.requireNonNull(obj);
            return new cqp(obj);
        }
        if (this.f8238b == null || zzfzt.q(i) != this.f8238b.length) {
            p = zzfzt.p(this.f13581e, this.f13580d);
            this.f13581e = p.size();
        } else {
            int i2 = this.f13581e;
            Object[] objArr = this.f13580d;
            int length = objArr.length;
            if (i2 < (length >> 1) + (length >> 2)) {
                objArr = Arrays.copyOf(objArr, i2);
            }
            p = new r(this.f8239c, r8.length - 1, this.f13581e, objArr, this.f8238b);
        }
        this.f13582f = true;
        this.f8238b = null;
        return p;
    }
}
