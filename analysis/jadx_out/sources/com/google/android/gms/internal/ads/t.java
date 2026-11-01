package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.dfa;
import g.fek;
import g.fng;
import g.gde;
import g.he;
import g.ky;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class t extends zzgxp {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3984a = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, he.UNDEFINED_ITEM_ID};
    private final int zzc;
    private final zzgxp zzd;
    private final zzgxp zze;
    private final int zzf;
    private final int zzg;

    public t(zzgxp zzgxpVar, zzgxp zzgxpVar2) {
        this.zzd = zzgxpVar;
        this.zze = zzgxpVar2;
        int zzd = zzgxpVar.zzd();
        this.zzf = zzd;
        this.zzc = zzgxpVar2.zzd() + zzd;
        this.zzg = Math.max(zzgxpVar.g(), zzgxpVar2.g()) + 1;
    }

    public static zzgxp b(zzgxp zzgxpVar, zzgxp zzgxpVar2) {
        if (zzgxpVar2.zzd() == 0) {
            return zzgxpVar;
        }
        if (zzgxpVar.zzd() == 0) {
            return zzgxpVar2;
        }
        int zzd = zzgxpVar2.zzd() + zzgxpVar.zzd();
        if (zzd < 128) {
            int zzd2 = zzgxpVar.zzd();
            int zzd3 = zzgxpVar2.zzd();
            byte[] bArr = new byte[zzd2 + zzd3];
            zzgxpVar.zzz(bArr, 0, 0, zzd2);
            zzgxpVar2.zzz(bArr, 0, zzd2, zzd3);
            return new ah(bArr);
        }
        if (zzgxpVar instanceof t) {
            t tVar = (t) zzgxpVar;
            if (zzgxpVar2.zzd() + tVar.zze.zzd() < 128) {
                zzgxp zzgxpVar3 = tVar.zze;
                int zzd4 = zzgxpVar3.zzd();
                int zzd5 = zzgxpVar2.zzd();
                byte[] bArr2 = new byte[zzd4 + zzd5];
                zzgxpVar3.zzz(bArr2, 0, 0, zzd4);
                zzgxpVar2.zzz(bArr2, 0, zzd4, zzd5);
                return new t(tVar.zzd, new ah(bArr2));
            }
            if (tVar.zzd.g() > tVar.zze.g() && tVar.zzg > zzgxpVar2.g()) {
                return new t(tVar.zzd, new t(tVar.zze, zzgxpVar2));
            }
        }
        if (zzd >= d(Math.max(zzgxpVar.g(), zzgxpVar2.g()) + 1)) {
            return new t(zzgxpVar, zzgxpVar2);
        }
        dfa dfaVar = new dfa(1);
        dfaVar.b(zzgxpVar);
        dfaVar.b(zzgxpVar2);
        ArrayDeque arrayDeque = dfaVar.f14080a;
        zzgxp zzgxpVar4 = (zzgxp) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzgxpVar4 = new t((zzgxp) arrayDeque.pop(), zzgxpVar4);
        }
        return zzgxpVar4;
    }

    public static int d(int i) {
        return i >= 47 ? he.UNDEFINED_ITEM_ID : f3984a[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgxp) {
            zzgxp zzgxpVar = (zzgxp) obj;
            if (this.zzc == zzgxpVar.zzd()) {
                if (this.zzc == 0) {
                    return true;
                }
                int q = q();
                int q2 = zzgxpVar.q();
                if (q == 0 || q2 == 0 || q == q2) {
                    ky kyVar = new ky(this);
                    ah d2 = kyVar.d();
                    ky kyVar2 = new ky(zzgxpVar);
                    ah d3 = kyVar2.d();
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        int zzd = d2.zzd() - i;
                        int zzd2 = d3.zzd() - i2;
                        int min = Math.min(zzd, zzd2);
                        if (!(i == 0 ? d2.a(d3, i2, min) : d3.a(d2, i, min))) {
                            break;
                        }
                        i3 += min;
                        int i4 = this.zzc;
                        if (i3 >= i4) {
                            if (i3 == i4) {
                                return true;
                            }
                            throw new IllegalStateException();
                        }
                        if (min == zzd) {
                            d2 = kyVar.d();
                            i = 0;
                        } else {
                            i += min;
                        }
                        if (min == zzd2) {
                            d3 = kyVar2.d();
                            i2 = 0;
                        } else {
                            i2 += min;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int f(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            return this.zzd.f(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zze.f(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zze.f(this.zzd.f(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int g() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final byte h(int i) {
        int i2 = this.zzf;
        return i < i2 ? this.zzd.h(i) : this.zze.h(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean i() {
        return this.zzc >= d(this.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new fek(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final String j(Charset charset) {
        return new String(zzA(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final void k(zzgyc zzgycVar) {
        this.zzd.k(zzgycVar);
        this.zze.k(zzgycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final void l(int i, byte[] bArr, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            this.zzd.l(i, bArr, i2, i3);
        } else {
            if (i >= i5) {
                this.zze.l(i - i5, bArr, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.zzd.l(i, bArr, i2, i6);
            this.zze.l(0, bArr, i2 + i6, i3 - i6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int m(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            return this.zzd.m(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zze.m(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zze.m(this.zzd.m(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final byte zza(int i) {
        zzgxp.o(i, this.zzc);
        return h(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final zzgxp zzk(int i, int i2) {
        int n = zzgxp.n(i, i2, this.zzc);
        if (n == 0) {
            return zzgxp.zzb;
        }
        if (n == this.zzc) {
            return this;
        }
        int i3 = this.zzf;
        if (i2 <= i3) {
            return this.zzd.zzk(i, i2);
        }
        if (i >= i3) {
            return this.zze.zzk(i - i3, i2 - i3);
        }
        zzgxp zzgxpVar = this.zzd;
        return new t(zzgxpVar.zzk(i, zzgxpVar.zzd()), this.zze.zzk(0, i2 - this.zzf));
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final zzgxv zzl() {
        ah ahVar;
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque(g());
        arrayDeque.push(this);
        zzgxp zzgxpVar = this.zzd;
        while (zzgxpVar instanceof t) {
            t tVar = (t) zzgxpVar;
            arrayDeque.push(tVar);
            zzgxpVar = tVar.zzd;
        }
        ah ahVar2 = (ah) zzgxpVar;
        while (true) {
            if (!(ahVar2 != null)) {
                Iterator it = arrayList.iterator();
                int i = 0;
                int i2 = 0;
                while (it.hasNext()) {
                    ByteBuffer byteBuffer = (ByteBuffer) it.next();
                    i2 += byteBuffer.remaining();
                    i = byteBuffer.hasArray() ? i | 1 : byteBuffer.isDirect() ? i | 2 : i | 4;
                }
                if (i == 2) {
                    return new fng(i2, arrayList);
                }
                gde gdeVar = new gde();
                gdeVar.f17927f = arrayList.iterator();
                gdeVar.f17924c = 0;
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    gdeVar.f17924c++;
                }
                gdeVar.f17925d = -1;
                if (!gdeVar.k()) {
                    gdeVar.h = zzgzk.zzc;
                    gdeVar.f17925d = 0;
                    gdeVar.f17926e = 0;
                    gdeVar.f17928g = 0L;
                }
                return zzgxv.zzG(gdeVar, 4096);
            }
            if (ahVar2 == null) {
                throw new NoSuchElementException();
            }
            while (true) {
                if (arrayDeque.isEmpty()) {
                    ahVar = null;
                    break;
                }
                zzgxp zzgxpVar2 = ((t) arrayDeque.pop()).zze;
                while (zzgxpVar2 instanceof t) {
                    t tVar2 = (t) zzgxpVar2;
                    arrayDeque.push(tVar2);
                    zzgxpVar2 = tVar2.zzd;
                }
                ahVar = (ah) zzgxpVar2;
                if (ahVar.zzd() != 0) {
                    break;
                }
            }
            arrayList.add(ahVar2.zzn());
            ahVar2 = ahVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final ByteBuffer zzn() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean zzp() {
        zzgxp zzgxpVar = this.zzd;
        zzgxp zzgxpVar2 = this.zze;
        return zzgxpVar2.f(zzgxpVar.f(0, 0, this.zzf), 0, zzgxpVar2.zzd()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    /* renamed from: zzs */
    public final zzgxk iterator() {
        return new fek(this);
    }
}
