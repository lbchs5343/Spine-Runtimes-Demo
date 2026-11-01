package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzxo extends zzca {
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final SparseArray o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final SparseBooleanArray s;
    public final boolean t;

    @Deprecated
    public zzxo() {
        this.o = new SparseArray();
        this.s = new SparseBooleanArray();
        this.n = true;
        this.q = true;
        this.m = true;
        this.l = true;
        this.p = true;
        this.r = true;
        this.t = true;
    }

    public zzxo(Context context) {
        zze(context);
        Point zzw = zzen.zzw(context);
        zzf(zzw.x, zzw.y, true);
        this.o = new SparseArray();
        this.s = new SparseBooleanArray();
        this.n = true;
        this.q = true;
        this.m = true;
        this.l = true;
        this.p = true;
        this.r = true;
        this.t = true;
    }

    public /* synthetic */ zzxo(zzxp zzxpVar) {
        super(zzxpVar);
        this.n = zzxpVar.zzC;
        this.q = zzxpVar.zzE;
        this.m = zzxpVar.zzG;
        this.l = zzxpVar.zzL;
        this.p = zzxpVar.zzM;
        this.r = zzxpVar.zzN;
        this.t = zzxpVar.zzP;
        SparseArray sparseArray = zzxpVar.f8941a;
        SparseArray sparseArray2 = new SparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.o = sparseArray2;
        this.s = zzxpVar.f8942b.clone();
    }

    public final zzxo zzp(int i, boolean z) {
        SparseBooleanArray sparseBooleanArray = this.s;
        if (sparseBooleanArray.get(i) == z) {
            return this;
        }
        if (z) {
            sparseBooleanArray.put(i, true);
            return this;
        }
        sparseBooleanArray.delete(i);
        return this;
    }
}
