package g;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class fej extends gzj implements RandomAccess, guu {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16665a;

    static {
        new fej(10).f19052f = false;
    }

    public fej(int i) {
        this.f16665a = new ArrayList(i);
    }

    public fej(ArrayList arrayList) {
        this.f16665a = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        g();
        this.f16665a.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        g();
        if (collection instanceof guu) {
            collection = ((guu) collection).zzh();
        }
        boolean addAll = this.f16665a.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // g.gzj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f16665a.size(), collection);
    }

    @Override // g.guu
    public final void b(cyb cybVar) {
        g();
        this.f16665a.add(cybVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        String str;
        ArrayList arrayList = this.f16665a;
        Object obj = arrayList.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof cyb)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, dhz.f14209a);
            cuf cufVar = gua.f18749a;
            int length = bArr.length;
            cufVar.getClass();
            if (cuf.g(0, bArr, length)) {
                arrayList.set(i, str2);
            }
            return str2;
        }
        cyb cybVar = (cyb) obj;
        Charset charset = dhz.f14209a;
        if (cybVar.c() == 0) {
            str = "";
        } else {
            crn crnVar = (crn) cybVar;
            str = new String(crnVar.zza, 0, crnVar.c(), charset);
        }
        crn crnVar2 = (crn) cybVar;
        byte[] bArr2 = crnVar2.zza;
        int c2 = crnVar2.c();
        gua.f18749a.getClass();
        if (cuf.g(0, bArr2, c2)) {
            arrayList.set(i, str);
        }
        return str;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        this.f16665a.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        g();
        Object remove = this.f16665a.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (!(remove instanceof cyb)) {
            return new String((byte[]) remove, dhz.f14209a);
        }
        cyb cybVar = (cyb) remove;
        Charset charset = dhz.f14209a;
        if (cybVar.c() == 0) {
            return "";
        }
        crn crnVar = (crn) cybVar;
        return new String(crnVar.zza, 0, crnVar.c(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        g();
        Object obj2 = this.f16665a.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof cyb)) {
            return new String((byte[]) obj2, dhz.f14209a);
        }
        cyb cybVar = (cyb) obj2;
        Charset charset = dhz.f14209a;
        if (cybVar.c() == 0) {
            return "";
        }
        crn crnVar = (crn) cybVar;
        return new String(crnVar.zza, 0, crnVar.c(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16665a.size();
    }

    @Override // g.cwe
    public final cwe zzd(int i) {
        ArrayList arrayList = this.f16665a;
        if (i < arrayList.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList2 = new ArrayList(i);
        arrayList2.addAll(arrayList);
        return new fej(arrayList2);
    }

    @Override // g.guu
    public final guu zze() {
        return this.f19052f ? new ghl(this) : this;
    }

    @Override // g.guu
    public final Object zzf(int i) {
        return this.f16665a.get(i);
    }

    @Override // g.guu
    public final List zzh() {
        return Collections.unmodifiableList(this.f16665a);
    }
}
