package j$.util.stream;

/* renamed from: j$.util.stream.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0299c {

    /* renamed from: a, reason: collision with root package name */
    public final int f20995a;

    /* renamed from: b, reason: collision with root package name */
    public int f20996b;

    /* renamed from: c, reason: collision with root package name */
    public int f20997c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f20998d;

    public AbstractC0299c() {
        this.f20995a = 4;
    }

    public AbstractC0299c(int i) {
        if (i >= 0) {
            this.f20995a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
        } else {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
    }

    public abstract void clear();

    public final long count() {
        int i = this.f20997c;
        return i == 0 ? this.f20996b : this.f20998d[i] + this.f20996b;
    }
}
