package g;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public final class abg {

    /* renamed from: a, reason: collision with root package name */
    public static abg f9917a;

    /* renamed from: b, reason: collision with root package name */
    public static final ReentrantLock f9918b = new ReentrantLock();

    /* renamed from: c, reason: collision with root package name */
    public final ReentrantLock f9919c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    public final SharedPreferences f9920d;

    public abg(Context context) {
        this.f9920d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public final String e(String str) {
        ReentrantLock reentrantLock = this.f9919c;
        reentrantLock.lock();
        try {
            return this.f9920d.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
