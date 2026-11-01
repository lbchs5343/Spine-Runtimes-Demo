package com.google.android.gms.internal.ads;

import g.aqn;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzaqg {

    /* renamed from: a, reason: collision with root package name */
    public static final aqn f4461a = new aqn(17);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4462b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4463c = new ArrayList(64);

    /* renamed from: d, reason: collision with root package name */
    public int f4464d = 0;

    public zzaqg(int i) {
    }

    public final synchronized void e() {
        while (this.f4464d > 4096) {
            byte[] bArr = (byte[]) this.f4462b.remove(0);
            this.f4463c.remove(bArr);
            this.f4464d -= bArr.length;
        }
    }

    public final synchronized void zza(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.f4462b.add(bArr);
                int binarySearch = Collections.binarySearch(this.f4463c, bArr, f4461a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f4463c.add(binarySearch, bArr);
                this.f4464d += length;
                e();
            }
        }
    }

    public final synchronized byte[] zzb(int i) {
        for (int i2 = 0; i2 < this.f4463c.size(); i2++) {
            byte[] bArr = (byte[]) this.f4463c.get(i2);
            int length = bArr.length;
            if (length >= i) {
                this.f4464d -= length;
                this.f4463c.remove(i2);
                this.f4462b.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
