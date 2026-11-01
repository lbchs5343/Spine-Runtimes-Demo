package g;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class fzz implements blx {

    /* renamed from: b, reason: collision with root package name */
    public static final dba f17759b = dsr.k(fzz.class);

    /* renamed from: c, reason: collision with root package name */
    public final boolean f17760c;

    /* renamed from: d, reason: collision with root package name */
    public ZipFile f17761d;

    /* renamed from: e, reason: collision with root package name */
    public final File f17762e;

    /* renamed from: f, reason: collision with root package name */
    public final ctk f17763f;

    public fzz(File file, fdy fdyVar) {
        this.f17762e = file;
        ctk ctkVar = (ctk) fdyVar.f16634c;
        this.f17763f = ctkVar;
        this.f17760c = ctkVar.bw();
    }

    @Override // g.blx
    public final eqm a() {
        this.f17761d = new ZipFile(this.f17762e);
        ctk ctkVar = this.f17763f;
        int bx = ctkVar.bx();
        if (bx == -1) {
            bx = he.UNDEFINED_ITEM_ID;
        }
        ArrayList arrayList = new ArrayList();
        Enumeration<? extends ZipEntry> entries = this.f17761d.entries();
        while (entries.hasMoreElements()) {
            bsl bslVar = new bsl(this, entries.nextElement());
            boolean bv = ctkVar.bv(bslVar);
            if (!bv) {
                f17759b.p(bslVar, "Zip entry '{}' is invalid and excluded from processing");
            }
            if (bv) {
                arrayList.add(bslVar);
                if (arrayList.size() > bx) {
                    throw new IllegalStateException("Max entries count limit exceeded: " + arrayList.size());
                }
            }
        }
        return new eqm(this, arrayList);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            ZipFile zipFile = this.f17761d;
            if (zipFile != null) {
                zipFile.close();
            }
        } finally {
            this.f17761d = null;
        }
    }

    public final BufferedInputStream g(bsl bslVar) {
        ZipFile zipFile = this.f17761d;
        ZipEntry zipEntry = bslVar.f12127b;
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        if (this.f17760c) {
            inputStream = new cwf(zipEntry.getSize(), inputStream);
        }
        return new BufferedInputStream(inputStream);
    }
}
