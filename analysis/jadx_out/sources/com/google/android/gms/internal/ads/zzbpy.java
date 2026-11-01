package com.google.android.gms.internal.ads;

import android.location.Location;
import g.clz;
import java.util.Date;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzbpy implements clz {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4917a;

    /* renamed from: b, reason: collision with root package name */
    public final Location f4918b;

    /* renamed from: c, reason: collision with root package name */
    public final Date f4919c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4920d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4921e;

    /* renamed from: f, reason: collision with root package name */
    public final Set f4922f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4923g;

    public zzbpy(Date date, int i, Set set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f4919c = date;
        this.f4921e = i;
        this.f4922f = set;
        this.f4918b = location;
        this.f4917a = z;
        this.f4920d = i2;
        this.f4923g = z2;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.f4919c;
    }

    @Deprecated
    public final int getGender() {
        return this.f4921e;
    }

    @Override // g.clz
    public final Set<String> getKeywords() {
        return this.f4922f;
    }

    public final Location getLocation() {
        return this.f4918b;
    }

    @Override // g.clz
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f4923g;
    }

    @Override // g.clz
    public final boolean isTesting() {
        return this.f4917a;
    }

    @Override // g.clz
    public final int taggedForChildDirectedTreatment() {
        return this.f4920d;
    }
}
