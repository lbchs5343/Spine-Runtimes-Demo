package com.google.android.gms.internal.ads;

import g.he;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzhgl implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final List f8740a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8741b;

    static {
        zzhfy.zza(Collections.EMPTY_SET);
    }

    public /* synthetic */ zzhgl(List list, List list2) {
        this.f8740a = list;
        this.f8741b = list2;
    }

    public static zzhgk zza(int i, int i2) {
        return new zzhgk(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final Set zzb() {
        List list = this.f8740a;
        int size = list.size();
        List list2 = this.f8741b;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i = 0; i < size2; i++) {
            Collection collection = (Collection) ((zzhgg) list2.get(i)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSet = new HashSet(size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : he.UNDEFINED_ITEM_ID);
        int size3 = list.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object zzb = ((zzhgg) list.get(i2)).zzb();
            zzb.getClass();
            hashSet.add(zzb);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                obj.getClass();
                hashSet.add(obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
