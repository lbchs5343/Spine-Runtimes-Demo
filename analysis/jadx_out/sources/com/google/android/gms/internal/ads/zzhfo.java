package com.google.android.gms.internal.ads;

import g.bve;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class zzhfo extends AbstractList {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhfp f8727a = zzhfp.zzb(zzhfo.class);

    /* renamed from: b, reason: collision with root package name */
    public final List f8728b;

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8729c;

    public zzhfo(List list, Iterator it) {
        this.f8728b = list;
        this.f8729c = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        List list = this.f8728b;
        if (list.size() > i) {
            return list.get(i);
        }
        Iterator it = this.f8729c;
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        list.add(it.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new bve(5, (Iterable) this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzhfp zzhfpVar = f8727a;
        zzhfpVar.zza("potentially expensive size() call");
        zzhfpVar.zza("blowup running");
        while (true) {
            Iterator it = this.f8729c;
            boolean hasNext = it.hasNext();
            List list = this.f8728b;
            if (!hasNext) {
                return list.size();
            }
            list.add(it.next());
        }
    }
}
