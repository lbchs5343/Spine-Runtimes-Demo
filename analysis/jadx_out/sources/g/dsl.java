package g;

import java.io.PrintWriter;

/* loaded from: classes3.dex */
public final class dsl {

    /* renamed from: a, reason: collision with root package name */
    public final long f14714a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14715b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14716c;

    /* renamed from: d, reason: collision with root package name */
    public final long f14717d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14718e;

    /* renamed from: f, reason: collision with root package name */
    public final long f14719f;

    /* renamed from: g, reason: collision with root package name */
    public final int f14720g;
    public final long h;
    public final int i;
    public final long j;
    public final int k;
    public final long l;
    public final long m;
    public final long n;

    public dsl(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f14720g = i;
        this.k = i2;
        this.m = j;
        this.f14717d = j2;
        this.f14719f = j3;
        this.h = j4;
        this.n = j5;
        this.f14714a = j6;
        this.j = j7;
        this.l = j8;
        this.f14715b = i3;
        this.f14718e = i4;
        this.i = i5;
        this.f14716c = j9;
    }

    public final void o(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f14720g);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.k);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((r1 / r0) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.m);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f14717d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f14715b);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f14719f);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f14714a);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f14718e);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.h);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.i);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.n);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.j);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.l);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public final String toString() {
        return "StatsSnapshot{maxSize=" + this.f14720g + ", size=" + this.k + ", cacheHits=" + this.m + ", cacheMisses=" + this.f14717d + ", downloadCount=" + this.f14715b + ", totalDownloadSize=" + this.f14719f + ", averageDownloadSize=" + this.f14714a + ", totalOriginalBitmapSize=" + this.h + ", totalTransformedBitmapSize=" + this.n + ", averageOriginalBitmapSize=" + this.j + ", averageTransformedBitmapSize=" + this.l + ", originalBitmapCount=" + this.f14718e + ", transformedBitmapCount=" + this.i + ", timeStamp=" + this.f14716c + '}';
    }
}
