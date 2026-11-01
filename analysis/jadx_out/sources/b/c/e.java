package b.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.BuglyStrategy;
import g.awt;
import g.bqo;
import g.cux;
import g.ejv;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class e extends ejv {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f360a;

    /* renamed from: b, reason: collision with root package name */
    public final int f361b;

    /* renamed from: c, reason: collision with root package name */
    public final String f362c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f363d;

    /* renamed from: e, reason: collision with root package name */
    public final int f364e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("layout_bounds", new bqo(null, "debug.layout", "true", "false"));
        hashMap.put("overdraw", new bqo(null, "debug.hwui.overdraw", "show", "false"));
        hashMap.put("track_gpu_frame", new bqo(null, "debug.hwui.profile", "visual_bars", "false"));
        hashMap.put("gpu_view_update", new bqo(null, "debug.hwui.show_dirty_regions", "true", "false"));
        hashMap.put("pointer_location", new bqo("system", "pointer_location", "1", "0"));
        hashMap.put("stay_awake", new bqo("global", "stay_on_while_plugged_in", "7", "0"));
        hashMap.put("dont_keep_activities", new bqo("global", "always_finish_activities", "1", "0"));
        f360a = Collections.unmodifiableMap(hashMap);
    }

    public e(Context context) {
        attachInterface(this, "b.e.f");
        this.f363d = context;
        int i = context.getApplicationInfo().uid;
        this.f364e = i;
        this.f361b = i / BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
        this.f362c = context.getPackageName();
    }

    public static String f(String... strArr) {
        boolean waitFor;
        Process start = new ProcessBuilder(strArr).redirectErrorStream(true).start();
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            waitFor = start.waitFor(4L, TimeUnit.SECONDS);
            if (!waitFor) {
                start.destroyForcibly();
                throw new IOException("Settings command timed out");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream = start.getInputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        inputStream.close();
                        if (start.exitValue() == 0) {
                            return new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                        }
                        throw new IOException("Settings command failed: " + start.exitValue());
                    }
                    if (byteArrayOutputStream.size() + read > 16384) {
                        throw new IOException("Unexpected settings output size");
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } finally {
            }
        } finally {
            start.destroy();
        }
    }

    public static void g() {
        Method method = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        int i = IBinder.class.getField("SYSPROPS_TRANSACTION").getInt(null);
        String[] strArr = {TTDownloadField.TT_ACTIVITY, "window", "SurfaceFlinger"};
        boolean z = false;
        for (int i2 = 0; i2 < 3; i2++) {
            IBinder iBinder = (IBinder) method.invoke(null, strArr[i2]);
            if (iBinder != null) {
                Parcel obtain = Parcel.obtain();
                try {
                    z |= iBinder.transact(i, obtain, null, 0);
                } finally {
                    obtain.recycle();
                }
            }
        }
        if (!z) {
            throw new IOException("No system property listener accepted the update");
        }
    }

    @Override // g.anf
    public final ParcelFileDescriptor h(int i, String str, boolean z) {
        j();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                return awt.w(this.f362c, i, str, z);
            } catch (Exception e2) {
                throw new IllegalStateException("layout_capture_failed", e2);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void i(bqo bqoVar, String str) {
        String str2 = bqoVar.f12027b;
        String str3 = bqoVar.f12028c;
        if (str2 == null) {
            SystemProperties.class.getMethod("set", String.class, String.class).invoke(null, str3, str);
        } else if (!"always_finish_activities".equals(str3)) {
            f("settings", "--user", Integer.toString(this.f361b), "put", bqoVar.f12027b, str3, str);
        } else {
            Class.forName("android.app.IActivityManager").getMethod("setAlwaysFinish", Boolean.TYPE).invoke(Class.forName("android.app.ActivityManager").getMethod("getService", null).invoke(null, null), Boolean.valueOf("1".equals(str)));
        }
    }

    public final void j() {
        if (Binder.getCallingUid() != this.f364e) {
            throw new SecurityException("Unexpected caller");
        }
        if (Process.myUid() != 0 && Process.myUid() != 2000) {
            throw new SecurityException("Shell service required");
        }
    }

    @Override // g.anf
    public final synchronized Bundle k() {
        Bundle bundle;
        long clearCallingIdentity;
        ServiceInfo serviceInfo;
        try {
            j();
            bundle = new Bundle();
            clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                serviceInfo = this.f363d.getPackageManager().getServiceInfo(new ComponentName(this.f362c, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"), 0);
            } catch (Exception unused) {
                bundle.putString(AVErrorInfo.ERROR, "accessibility_enable_failed");
            }
            if (!serviceInfo.enabled || !"android.permission.BIND_ACCESSIBILITY_SERVICE".equals(serviceInfo.permission)) {
                throw new IOException("Accessibility component is unavailable");
            }
            bqo bqoVar = new bqo("secure", "enabled_accessibility_services", "", "");
            String n = n(bqoVar);
            if (awt.r(n, this.f362c)) {
                i(bqoVar, awt.l(n, this.f362c));
                SystemClock.sleep(250L);
                n = n(bqoVar);
            }
            String s = awt.s(n, this.f362c);
            if (!s.equals(n)) {
                i(bqoVar, s);
            }
            bqo bqoVar2 = new bqo("secure", "accessibility_enabled", "1", "0");
            if (!"1".equals(n(bqoVar2))) {
                i(bqoVar2, "1");
            }
            if (!awt.r(n(bqoVar), this.f362c) || !"1".equals(n(bqoVar2))) {
                throw new IOException("Accessibility setting readback did not match");
            }
            bundle.putBoolean("success", true);
            Binder.restoreCallingIdentity(clearCallingIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
        return bundle;
    }

    @Override // g.anf
    public final synchronized Bundle l(String str) {
        boolean equals;
        String str2;
        j();
        Bundle bundle = new Bundle();
        bqo bqoVar = (bqo) f360a.get(str);
        if (bqoVar == null) {
            bundle.putString(AVErrorInfo.ERROR, "unsupported_tool");
            return bundle;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                String n = n(bqoVar);
                equals = bqoVar.f12027b == null ? bqoVar.f12029d.equals(n) : ("0".equals(n) || "null".equals(n) || n.isEmpty()) ? false : true;
                str2 = equals ? bqoVar.f12026a : bqoVar.f12029d;
                i(bqoVar, str2);
            } catch (Exception unused) {
                bundle.putBoolean("success", false);
                bundle.putString(AVErrorInfo.ERROR, "operation_failed");
            }
            if (!str2.equals(n(bqoVar))) {
                throw new IOException("Setting readback did not match");
            }
            if (bqoVar.f12027b == null) {
                g();
            }
            bundle.putBoolean("success", true);
            bundle.putBoolean("checked", !equals);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return bundle;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    @Override // g.anf
    public final Bundle m() {
        j();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                return cux.ao(this.f363d, this.f361b);
            } catch (Exception e2) {
                throw new IllegalStateException("activity_capture_failed", e2);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final String n(bqo bqoVar) {
        String str = bqoVar.f12028c;
        return bqoVar.f12027b == null ? (String) SystemProperties.class.getMethod("get", String.class, String.class).invoke(null, str, bqoVar.f12026a) : f("settings", "--user", Integer.toString(this.f361b), "get", bqoVar.f12027b, str).trim();
    }
}
