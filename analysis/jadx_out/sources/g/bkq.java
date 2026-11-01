package g;

import android.os.ParcelFileDescriptor;
import android.util.Pair;
import java.io.IOException;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class bkq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f11752a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11753b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11754c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f11755d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11756e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Serializable f11757f;

    public /* synthetic */ bkq(int i, ark arkVar, Pair pair, boolean z, AtomicBoolean atomicBoolean) {
        this.f11756e = i;
        this.f11753b = arkVar;
        this.f11754c = pair;
        this.f11752a = z;
        this.f11757f = atomicBoolean;
    }

    public /* synthetic */ bkq(ParcelFileDescriptor[] parcelFileDescriptorArr, String str, String str2, int i, boolean z) {
        this.f11753b = parcelFileDescriptorArr;
        this.f11754c = str;
        this.f11757f = str2;
        this.f11756e = i;
        this.f11752a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11755d) {
            case 0:
                int i = this.f11756e;
                ark arkVar = (ark) this.f11753b;
                Pair pair = (Pair) this.f11754c;
                final boolean z = this.f11752a;
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f11757f;
                if (i != bew.f11417e) {
                    return;
                }
                bew.f11416d = null;
                final String str = pair != null ? (String) pair.first : null;
                final int intValue = pair == null ? -1 : ((Integer) pair.second).intValue();
                arkVar.m.post(new euq(arkVar, new gnl(new cbr() { // from class: g.mn
                    @Override // g.cbr
                    public final Object _bj(anf anfVar) {
                        ParcelFileDescriptor h = anfVar.h(intValue, str, z);
                        if (h != null) {
                            return h;
                        }
                        throw new IOException("layout_capture_failed");
                    }
                }, new cxu(i, atomicBoolean)), 1));
                return;
            default:
                ParcelFileDescriptor[] parcelFileDescriptorArr = (ParcelFileDescriptor[]) this.f11753b;
                String str2 = (String) this.f11754c;
                String str3 = (String) this.f11757f;
                int i2 = this.f11756e;
                boolean z2 = this.f11752a;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArr[1]);
                    try {
                        synchronized (awt.f11002g) {
                            egh.ae(awt.o(str2, i2, str3, z2), autoCloseOutputStream);
                        }
                        autoCloseOutputStream.close();
                        return;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorArr[1].closeWithError("Unable to capture the foreground application: " + th.getClass().getSimpleName());
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
        }
    }
}
