package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class zzfpc extends zzfpd {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f8130a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8131b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f8132c;

    public zzfpc(zzfov zzfovVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfovVar);
        this.f8132c = new HashSet(hashSet);
        this.f8130a = jSONObject;
        this.f8131b = j;
    }
}
