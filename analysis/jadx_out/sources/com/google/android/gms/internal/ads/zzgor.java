package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgor {

    /* renamed from: a, reason: collision with root package name */
    public zzgos f8526a;

    /* renamed from: c, reason: collision with root package name */
    public final Class f8528c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f8529d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f8530e = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public zzgnd f8527b = zzgnd.zza;

    public /* synthetic */ zzgor(Class cls) {
        this.f8528c = cls;
    }

    public final void f(Object obj, zzguk zzgukVar, boolean z) {
        byte[] zzc;
        if (this.f8529d == null) {
            throw new IllegalStateException("addEntry cannot be called after build");
        }
        if (obj == null) {
            throw new NullPointerException("`fullPrimitive` must not be null");
        }
        if (zzgukVar.zzk() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        int ordinal = zzgukVar.zzf().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzc = zzgfr.zza;
                } else if (ordinal != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                }
            }
            zzc = zzgoa.zza(zzgukVar.zza()).zzc();
        } else {
            zzc = zzgoa.zzb(zzgukVar.zza()).zzc();
        }
        zzgwu zzb = zzgwu.zzb(zzc);
        zzgos zzgosVar = new zzgos(obj, zzb, zzgukVar.zzk(), zzgukVar.zzf(), zzgukVar.zza(), zzgukVar.zzb().zzg());
        HashMap hashMap = this.f8529d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzgosVar);
        List list = (List) hashMap.put(zzb, Collections.unmodifiableList(arrayList));
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list);
            arrayList2.add(zzgosVar);
            hashMap.put(zzb, Collections.unmodifiableList(arrayList2));
        }
        this.f8530e.add(zzgosVar);
        if (z) {
            if (this.f8526a != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.f8526a = zzgosVar;
        }
    }

    public final zzgor zza(Object obj, zzgfw zzgfwVar, zzguk zzgukVar) throws GeneralSecurityException {
        f(obj, zzgukVar, false);
        return this;
    }

    public final zzgor zzb(Object obj, zzgfw zzgfwVar, zzguk zzgukVar) throws GeneralSecurityException {
        f(obj, zzgukVar, true);
        return this;
    }

    public final zzgor zzc(zzgnd zzgndVar) {
        if (this.f8529d == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build");
        }
        this.f8527b = zzgndVar;
        return this;
    }

    public final zzgou zzd() throws GeneralSecurityException {
        HashMap hashMap = this.f8529d;
        if (hashMap == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        zzgou zzgouVar = new zzgou(hashMap, this.f8526a, this.f8527b, this.f8528c);
        this.f8529d = null;
        return zzgouVar;
    }
}
