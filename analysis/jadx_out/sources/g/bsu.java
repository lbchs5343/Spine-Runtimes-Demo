package g;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final /* synthetic */ class bsu implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f12150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12151b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ dig f12152c;

    public /* synthetic */ bsu(boolean z, String str, dig digVar) {
        this.f12150a = z;
        this.f12151b = str;
        this.f12152c = digVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        MessageDigest messageDigest;
        int i = 0;
        boolean z = this.f12150a;
        String str = this.f12151b;
        dig digVar = this.f12152c;
        String str2 = (z || !bq.g(str, digVar, true, false).f18010g) ? "not allowed" : "debug cert rejected";
        while (true) {
            if (i >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                break;
            }
            i++;
        }
        ckd.k(messageDigest);
        return str2 + ": pkg=" + str + ", sha256=" + aky.ad(messageDigest.digest(digVar.f14223a)) + ", atk=" + z + ", ver=12451000.false";
    }
}
