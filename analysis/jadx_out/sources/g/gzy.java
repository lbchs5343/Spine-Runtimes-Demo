package g;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gzy extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public static Configuration f19080a;

    /* renamed from: b, reason: collision with root package name */
    public Configuration f19081b;

    /* renamed from: c, reason: collision with root package name */
    public Resources f19082c;

    /* renamed from: d, reason: collision with root package name */
    public int f19083d;

    /* renamed from: e, reason: collision with root package name */
    public Resources.Theme f19084e;

    /* renamed from: f, reason: collision with root package name */
    public LayoutInflater f19085f;

    public gzy(Context context, int i) {
        super(context);
        this.f19083d = i;
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void g(Configuration configuration) {
        if (this.f19082c != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f19081b != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f19081b = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r0.equals(g.gzy.f19080a) != false) goto L15;
     */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Resources getResources() {
        if (this.f19082c == null) {
            Configuration configuration = this.f19081b;
            if (configuration != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (f19080a == null) {
                        Configuration configuration2 = new Configuration();
                        configuration2.fontScale = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        f19080a = configuration2;
                    }
                }
                this.f19082c = createConfigurationContext(this.f19081b).getResources();
            }
            this.f19082c = super.getResources();
        }
        return this.f19082c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f19085f == null) {
            this.f19085f = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f19085f;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f19084e;
        if (theme != null) {
            return theme;
        }
        if (this.f19083d == 0) {
            this.f19083d = 2131952340;
        }
        h();
        return this.f19084e;
    }

    public final void h() {
        if (this.f19084e == null) {
            this.f19084e = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f19084e.setTo(theme);
            }
        }
        this.f19084e.applyStyle(this.f19083d, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f19083d != i) {
            this.f19083d = i;
            h();
        }
    }
}
