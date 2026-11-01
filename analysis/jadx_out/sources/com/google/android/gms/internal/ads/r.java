package com.google.android.gms.internal.ads;

import g.gs;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class r extends zzfzt {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f3973a;

    /* renamed from: b, reason: collision with root package name */
    public static final r f3974b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f3975c;
    public final transient Object[] i;
    public final transient int j;
    public final transient Object[] k;
    public final transient int l;

    static {
        Object[] objArr = new Object[0];
        f3973a = objArr;
        f3974b = new r(0, 0, 0, objArr, objArr);
    }

    public r(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        this.i = objArr;
        this.j = i;
        this.k = objArr2;
        this.l = i2;
        this.f3975c = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.k;
            if (objArr.length != 0) {
                int ak = gs.ak(obj);
                while (true) {
                    int i = ak & this.l;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    ak = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int e(int i, Object[] objArr) {
        Object[] objArr2 = this.i;
        int i2 = this.f3975c;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final Object[] f() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int g() {
        return this.f3975c;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt
    public final zzfzo m() {
        return zzfzo.j(this.f3975c, this.i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3975c;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    /* renamed from: zze */
    public final zzgbu iterator() {
        return zzd().listIterator(0);
    }
}
