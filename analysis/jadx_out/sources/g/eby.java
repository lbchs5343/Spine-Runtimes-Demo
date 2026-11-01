package g;

import android.os.IBinder;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.List;

/* loaded from: classes.dex */
public final class eby implements com.tencent.bugly.proguard.ah {

    /* renamed from: b, reason: collision with root package name */
    public Object f15272b;

    /* renamed from: c, reason: collision with root package name */
    public long f15273c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15274d;

    @Override // com.tencent.bugly.proguard.ah
    public void a(boolean z, String str) {
        com.tencent.bugly.proguard.as.a((List) this.f15272b, z, System.currentTimeMillis() - this.f15273c, this.f15274d ? "realtime" : "cache", str);
        com.tencent.bugly.proguard.as.a(z, (List<CrashDetailBean>) this.f15272b);
    }

    public synchronized boolean e(IBinder iBinder, long j) {
        boolean z;
        if (this.f15274d && iBinder != null && iBinder == ((IBinder) this.f15272b) && j > 0) {
            z = j == this.f15273c;
        }
        return z;
    }
}
