package g;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class dht {

    /* renamed from: a, reason: collision with root package name */
    public int f14199a;

    /* renamed from: b, reason: collision with root package name */
    public long f14200b;

    /* renamed from: c, reason: collision with root package name */
    public long f14201c;

    /* renamed from: d, reason: collision with root package name */
    public long f14202d;

    /* renamed from: e, reason: collision with root package name */
    public long f14203e;

    /* renamed from: f, reason: collision with root package name */
    public long f14204f;

    /* renamed from: g, reason: collision with root package name */
    public long f14205g;
    public final boolean[] h = new boolean[15];

    public final void i(long j) {
        long j2 = this.f14200b;
        if (j2 == 0) {
            this.f14202d = j;
        } else if (j2 == 1) {
            long j3 = j - this.f14202d;
            this.f14204f = j3;
            this.f14203e = j3;
            this.f14201c = 1L;
        } else {
            long j4 = j - this.f14205g;
            long abs = Math.abs(j4 - this.f14204f);
            boolean[] zArr = this.h;
            int i = (int) (j2 % 15);
            if (abs <= C.MICROS_PER_SECOND) {
                this.f14201c++;
                this.f14203e += j4;
                if (zArr[i]) {
                    zArr[i] = false;
                    this.f14199a--;
                }
            } else if (!zArr[i]) {
                zArr[i] = true;
                this.f14199a++;
            }
        }
        this.f14200b++;
        this.f14205g = j;
    }

    public final void j() {
        this.f14200b = 0L;
        this.f14201c = 0L;
        this.f14203e = 0L;
        this.f14199a = 0;
        Arrays.fill(this.h, false);
    }

    public final boolean k() {
        return this.f14200b > 15 && this.f14199a == 0;
    }
}
