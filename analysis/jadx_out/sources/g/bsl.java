package g;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;

/* loaded from: classes.dex */
public final class bsl implements ffs {

    /* renamed from: a, reason: collision with root package name */
    public final fzz f12126a;

    /* renamed from: b, reason: collision with root package name */
    public final ZipEntry f12127b;

    public bsl(fzz fzzVar, ZipEntry zipEntry) {
        this.f12126a = fzzVar;
        this.f12127b = zipEntry;
    }

    @Override // g.ffs
    public final long c() {
        return this.f12127b.getSize();
    }

    @Override // g.ffs
    public final long d() {
        return this.f12127b.getCompressedSize();
    }

    @Override // g.ffs
    public final byte[] e() {
        byte[] readAllBytes;
        try {
            BufferedInputStream g2 = this.f12126a.g(this);
            try {
                readAllBytes = g2.readAllBytes();
                g2.close();
                return readAllBytes;
            } finally {
            }
        } catch (Exception e2) {
            throw new RuntimeException("Failed to read bytes for entry: " + this.f12127b.getName(), e2);
        }
    }

    @Override // g.ffs
    public final boolean f() {
        return false;
    }

    @Override // g.ffs
    public final InputStream g() {
        try {
            return this.f12126a.g(this);
        } catch (Exception e2) {
            throw new RuntimeException("Failed to open input stream for entry: " + this.f12127b.getName(), e2);
        }
    }

    @Override // g.ffs
    public final String getName() {
        return this.f12127b.getName();
    }

    @Override // g.ffs
    public final boolean isDirectory() {
        return this.f12127b.isDirectory();
    }
}
