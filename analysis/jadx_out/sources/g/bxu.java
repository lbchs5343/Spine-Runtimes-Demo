package g;

import android.content.Context;
import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public final class bxu implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f12406a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12407b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f12408c;

    public bxu(Context context, String str, String str2) {
        this.f12406a = context;
        this.f12407b = str;
        this.f12408c = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c4  */
    /* JADX WARN: Type inference failed for: r3v0, types: [g.eie] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2, types: [g.caa] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x00f3 -> B:59:0x00f0). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public caa call() throws Exception {
        cgf cgfVar;
        caa caaVar;
        caa caaVar2;
        String str;
        Object obj;
        Pair pair;
        caa i;
        File file;
        cgh cghVar;
        Context context = this.f12406a;
        eie eieVar = buj.f12225g;
        if (eieVar == null) {
            synchronized (eie.class) {
                try {
                    eieVar = buj.f12225g;
                    if (eieVar == null) {
                        eieVar = new eie(buj.ak(context), new bli(14));
                        buj.f12225g = eieVar;
                    }
                } finally {
                }
            }
        }
        ?? r3 = eieVar;
        Context context2 = this.f12406a;
        String str2 = this.f12407b;
        String str3 = this.f12408c;
        boolean z = false;
        AutoCloseable autoCloseable = null;
        if (str3 != null) {
            fnq fnqVar = (fnq) r3.f15585g;
            try {
                File n = fnqVar.n();
                cghVar = cgh.JSON;
                file = new File(n, fnq.j(str2, cghVar, false));
                if (!file.exists()) {
                    file = new File(fnqVar.n(), fnq.j(str2, cgh.ZIP, false));
                    if (!file.exists()) {
                        file = null;
                    }
                }
            } catch (FileNotFoundException unused) {
            }
            if (file != null) {
                FileInputStream fileInputStream = new FileInputStream(file);
                if (file.getAbsolutePath().endsWith(".zip")) {
                    cghVar = cgh.ZIP;
                }
                file.getAbsolutePath();
                ckf ckfVar = hbp.f19183a;
                pair = new Pair(cghVar, fileInputStream);
                if (pair != null) {
                    cgh cghVar2 = (cgh) pair.first;
                    InputStream inputStream = (InputStream) pair.second;
                    if (cghVar2 == cgh.ZIP) {
                        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
                        try {
                            i = ahz.h(context2, zipInputStream, str3);
                            cqw cqwVar = ebx.f15269c;
                            try {
                                zipInputStream.close();
                            } catch (RuntimeException e2) {
                                throw e2;
                            } catch (Exception unused2) {
                            }
                        } catch (Throwable th) {
                            cqw cqwVar2 = ebx.f15269c;
                            try {
                                zipInputStream.close();
                            } catch (RuntimeException e3) {
                                throw e3;
                            } catch (Exception unused3) {
                            }
                            throw th;
                        }
                    } else {
                        i = ahz.i(inputStream, str3);
                    }
                    Object obj2 = i.f12534a;
                    if (obj2 != null) {
                        cgfVar = (cgf) obj2;
                        if (cgfVar == null) {
                            caaVar = new caa(cgfVar);
                        } else {
                            ckf ckfVar2 = hbp.f19183a;
                            try {
                                try {
                                    try {
                                        crd s = bli.s(str2);
                                        HttpURLConnection httpURLConnection = (HttpURLConnection) s.f13370d;
                                        try {
                                            if (httpURLConnection.getResponseCode() / 100 == 2) {
                                                z = true;
                                            }
                                        } catch (IOException unused4) {
                                        }
                                        if (z) {
                                            caa s2 = r3.s(context2, str2, httpURLConnection.getInputStream(), httpURLConnection.getContentType(), str3);
                                            Object obj3 = s2.f12534a;
                                            caaVar2 = s2;
                                        } else {
                                            caaVar2 = new caa((Throwable) new IllegalArgumentException(s.o()));
                                        }
                                        s.close();
                                        r3 = caaVar2;
                                    } catch (Exception e4) {
                                        r3 = new caa((Throwable) e4);
                                        if (0 != 0) {
                                            autoCloseable.close();
                                            r3 = r3;
                                        }
                                    }
                                } catch (IOException e5) {
                                    hbp.c("LottieFetchResult close failed ", e5);
                                    r3 = r3;
                                }
                                caaVar = r3;
                            } finally {
                            }
                        }
                        str = this.f12408c;
                        if (str != null && (obj = caaVar.f12534a) != null) {
                            cy.f13728a.c(str, (cgf) obj);
                        }
                        return caaVar;
                    }
                }
            }
            pair = null;
            if (pair != null) {
            }
        }
        cgfVar = null;
        if (cgfVar == null) {
        }
        str = this.f12408c;
        if (str != null) {
            cy.f13728a.c(str, (cgf) obj);
        }
        return caaVar;
    }
}
