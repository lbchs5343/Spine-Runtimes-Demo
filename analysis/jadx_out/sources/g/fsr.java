package g;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Looper;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class fsr extends cwp {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f17345a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public final ComponentName f17346b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17347d;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f17348e;

    public fsr(ajy ajyVar) {
        super(0);
        attachInterface(this, "moe.shizuku.server.IShizukuServiceConnection");
        this.f17348e = new HashSet();
        this.f17347d = false;
        this.f17346b = ajyVar.f10356c;
    }
}
