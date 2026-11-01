package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzfwn;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzgcr;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class esx extends AbstractMap implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f16110a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public transient eep f16111b;

    /* renamed from: c, reason: collision with root package name */
    public transient eep f16112c;

    /* renamed from: d, reason: collision with root package name */
    public transient Object[] f16113d;

    /* renamed from: e, reason: collision with root package name */
    public transient Object[] f16114e;

    /* renamed from: f, reason: collision with root package name */
    public transient int f16115f = zzgcr.zzc(8, 1, 1073741823);

    /* renamed from: g, reason: collision with root package name */
    public transient Object f16116g;
    public transient gbq h;
    public transient int[] i;
    public transient int j;

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (o()) {
            return;
        }
        this.f16115f += 32;
        Map l = l();
        if (l != null) {
            this.f16115f = zzgcr.zzc(size(), 3, 1073741823);
            l.clear();
            this.f16116g = null;
            this.j = 0;
            return;
        }
        Arrays.fill(q(), 0, this.j, (Object) null);
        Arrays.fill(s(), 0, this.j, (Object) null);
        Object obj = this.f16116g;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(n(), 0, this.j, 0);
        this.j = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map l = l();
        return l != null ? l.containsKey(obj) : k(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map l = l();
        if (l != null) {
            return l.containsValue(obj);
        }
        for (int i = 0; i < this.j; i++) {
            if (zzfwn.zza(obj, s()[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        eep eepVar = this.f16111b;
        if (eepVar != null) {
            return eepVar;
        }
        eep eepVar2 = new eep(this, 0);
        this.f16111b = eepVar2;
        return eepVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map l = l();
        if (l != null) {
            return l.get(obj);
        }
        int k = k(obj);
        if (k == -1) {
            return null;
        }
        return s()[k];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final int k(Object obj) {
        if (o()) {
            return -1;
        }
        int ak = gs.ak(obj);
        int t = t();
        Object obj2 = this.f16116g;
        Objects.requireNonNull(obj2);
        int ad = eyt.ad(ak & t, obj2);
        if (ad != 0) {
            int i = ~t;
            int i2 = ak & i;
            do {
                int i3 = ad - 1;
                int i4 = n()[i3];
                if ((i4 & i) == i2 && zzfwn.zza(obj, q()[i3])) {
                    return i3;
                }
                ad = i4 & t;
            } while (ad != 0);
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        eep eepVar = this.f16112c;
        if (eepVar != null) {
            return eepVar;
        }
        eep eepVar2 = new eep(this, 1);
        this.f16112c = eepVar2;
        return eepVar2;
    }

    public final Map l() {
        Object obj = this.f16116g;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void m(int i, int i2) {
        Object obj = this.f16116g;
        Objects.requireNonNull(obj);
        int[] n = n();
        Object[] q = q();
        Object[] s = s();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            q[i] = null;
            s[i] = null;
            n[i] = 0;
            return;
        }
        int i4 = i + 1;
        Object obj2 = q[i3];
        q[i] = obj2;
        s[i] = s[i3];
        q[i3] = null;
        s[i3] = null;
        n[i] = n[i3];
        n[i3] = 0;
        int ak = gs.ak(obj2) & i2;
        int ad = eyt.ad(ak, obj);
        if (ad == size) {
            eyt.bo(ak, i4, obj);
            return;
        }
        while (true) {
            int i5 = ad - 1;
            int i6 = n[i5];
            int i7 = i6 & i2;
            if (i7 == size) {
                n[i5] = (i6 & (~i2)) | (i2 & i4);
                return;
            }
            ad = i7;
        }
    }

    public final int[] n() {
        int[] iArr = this.i;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final boolean o() {
        return this.f16116g == null;
    }

    public final int p(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object bl = eyt.bl(i2);
        if (i4 != 0) {
            eyt.bo(i3 & i5, i4 + 1, bl);
        }
        Object obj = this.f16116g;
        Objects.requireNonNull(obj);
        int[] n = n();
        for (int i6 = 0; i6 <= i; i6++) {
            int ad = eyt.ad(i6, obj);
            while (ad != 0) {
                int i7 = ad - 1;
                int i8 = n[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int ad2 = eyt.ad(i10, bl);
                eyt.bo(i10, ad, bl);
                n[i7] = ((~i5) & i9) | (ad2 & i5);
                ad = i8 & i;
            }
        }
        this.f16116g = bl;
        this.f16115f = ((32 - Integer.numberOfLeadingZeros(i5)) & 31) | (this.f16115f & (-32));
        return i5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int min;
        if (o()) {
            zzfwq.zzl(o(), "Arrays already allocated");
            int i = this.f16115f;
            int max = Math.max(i + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            if (max > highestOneBit && (highestOneBit = highestOneBit + highestOneBit) <= 0) {
                highestOneBit = C.ENCODING_PCM_32BIT;
            }
            int max2 = Math.max(4, highestOneBit);
            this.f16116g = eyt.bl(max2);
            this.f16115f = ((32 - Integer.numberOfLeadingZeros(max2 - 1)) & 31) | (this.f16115f & (-32));
            this.i = new int[i];
            this.f16113d = new Object[i];
            this.f16114e = new Object[i];
        }
        Map l = l();
        if (l != null) {
            return l.put(obj, obj2);
        }
        int[] n = n();
        Object[] q = q();
        Object[] s = s();
        int i2 = this.j;
        int i3 = i2 + 1;
        int ak = gs.ak(obj);
        int t = t();
        int i4 = ak & t;
        Object obj3 = this.f16116g;
        Objects.requireNonNull(obj3);
        int ad = eyt.ad(i4, obj3);
        if (ad != 0) {
            int i5 = ~t;
            int i6 = ak & i5;
            int i7 = 0;
            while (true) {
                int i8 = ad - 1;
                int i9 = n[i8];
                int i10 = i9 & i5;
                if (i10 == i6 && zzfwn.zza(obj, q[i8])) {
                    Object obj4 = s[i8];
                    s[i8] = obj2;
                    return obj4;
                }
                int i11 = i9 & t;
                int i12 = i7 + 1;
                if (i11 != 0) {
                    i7 = i12;
                    ad = i11;
                } else {
                    if (i12 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(t() + 1, 1.0f);
                        int i13 = isEmpty() ? -1 : 0;
                        while (i13 >= 0) {
                            linkedHashMap.put(q()[i13], s()[i13]);
                            int i14 = i13 + 1;
                            i13 = i14 < this.j ? i14 : -1;
                        }
                        this.f16116g = linkedHashMap;
                        this.i = null;
                        this.f16113d = null;
                        this.f16114e = null;
                        this.f16115f += 32;
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i3 > t) {
                        t = p(t, (t + 1) * (t < 32 ? 4 : 2), ak, i2);
                    } else {
                        n[i8] = (i3 & t) | i10;
                    }
                }
            }
        } else if (i3 > t) {
            t = p(t, (t + 1) * (t < 32 ? 4 : 2), ak, i2);
        } else {
            Object obj5 = this.f16116g;
            Objects.requireNonNull(obj5);
            eyt.bo(i4, i3, obj5);
        }
        int length = n().length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.i = Arrays.copyOf(n(), min);
            this.f16113d = Arrays.copyOf(q(), min);
            this.f16114e = Arrays.copyOf(s(), min);
        }
        n()[i2] = (~t) & ak;
        q()[i2] = obj;
        s()[i2] = obj2;
        this.j = i3;
        this.f16115f += 32;
        return null;
    }

    public final Object[] q() {
        Object[] objArr = this.f16113d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object r(Object obj) {
        if (!o()) {
            int t = t();
            Object obj2 = this.f16116g;
            Objects.requireNonNull(obj2);
            int aj = eyt.aj(obj, null, t, obj2, n(), q(), null);
            if (aj != -1) {
                Object obj3 = s()[aj];
                m(aj, t);
                this.j--;
                this.f16115f += 32;
                return obj3;
            }
        }
        return f16110a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map l = l();
        if (l != null) {
            return l.remove(obj);
        }
        Object r = r(obj);
        if (r == f16110a) {
            return null;
        }
        return r;
    }

    public final Object[] s() {
        Object[] objArr = this.f16114e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map l = l();
        return l != null ? l.size() : this.j;
    }

    public final int t() {
        return (1 << (this.f16115f & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        gbq gbqVar = this.h;
        if (gbqVar != null) {
            return gbqVar;
        }
        gbq gbqVar2 = new gbq(1, this);
        this.h = gbqVar2;
        return gbqVar2;
    }
}
