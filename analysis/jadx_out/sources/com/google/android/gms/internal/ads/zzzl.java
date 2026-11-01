package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import g.avq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class zzzl {

    /* renamed from: c, reason: collision with root package name */
    public int f8976c;

    /* renamed from: d, reason: collision with root package name */
    public int f8977d;

    /* renamed from: f, reason: collision with root package name */
    public int f8979f;

    /* renamed from: b, reason: collision with root package name */
    public static final zzzh f8975b = new Comparator() { // from class: com.google.android.gms.internal.ads.zzzh
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((avq) obj).f10934a - ((avq) obj2).f10934a;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public static final zzzi f8974a = new Comparator() { // from class: com.google.android.gms.internal.ads.zzzi
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Float.compare(((avq) obj).f10936c, ((avq) obj2).f10936c);
        }
    };

    /* renamed from: g, reason: collision with root package name */
    public final avq[] f8980g = new avq[5];

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f8978e = new ArrayList();
    public int h = -1;

    public zzzl(int i) {
    }

    public final float zza(float f2) {
        int i = this.h;
        ArrayList arrayList = this.f8978e;
        if (i != 0) {
            Collections.sort(arrayList, f8974a);
            this.h = 0;
        }
        float f3 = this.f8977d;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            float f4 = 0.5f * f3;
            avq avqVar = (avq) arrayList.get(i3);
            i2 += avqVar.f10935b;
            if (i2 >= f4) {
                return avqVar.f10936c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((avq) arrayList.get(arrayList.size() - 1)).f10936c;
    }

    public final void zzb(int i, float f2) {
        avq avqVar;
        int i2 = this.h;
        ArrayList arrayList = this.f8978e;
        if (i2 != 1) {
            Collections.sort(arrayList, f8975b);
            this.h = 1;
        }
        int i3 = this.f8979f;
        avq[] avqVarArr = this.f8980g;
        if (i3 > 0) {
            int i4 = i3 - 1;
            this.f8979f = i4;
            avqVar = avqVarArr[i4];
        } else {
            avqVar = new avq();
        }
        int i5 = this.f8976c;
        this.f8976c = i5 + 1;
        avqVar.f10934a = i5;
        avqVar.f10935b = i;
        avqVar.f10936c = f2;
        arrayList.add(avqVar);
        this.f8977d += i;
        while (true) {
            int i6 = this.f8977d;
            if (i6 <= 2000) {
                return;
            }
            int i7 = i6 + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth;
            avq avqVar2 = (avq) arrayList.get(0);
            int i8 = avqVar2.f10935b;
            if (i8 <= i7) {
                this.f8977d -= i8;
                arrayList.remove(0);
                int i9 = this.f8979f;
                if (i9 < 5) {
                    this.f8979f = i9 + 1;
                    avqVarArr[i9] = avqVar2;
                }
            } else {
                avqVar2.f10935b = i8 - i7;
                this.f8977d -= i7;
            }
        }
    }

    public final void zzc() {
        this.f8978e.clear();
        this.h = -1;
        this.f8976c = 0;
        this.f8977d = 0;
    }
}
