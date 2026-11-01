package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.util.List;

/* loaded from: classes3.dex */
public class ckb extends gsp {
    public final /* synthetic */ int _bw;

    /* renamed from: f, reason: collision with root package name */
    public final Context f13012f;

    public /* synthetic */ ckb(Context context, int i) {
        this._bw = i;
        this.f13012f = context;
    }

    @Override // g.gsp
    public boolean d(fpu fpuVar) {
        switch (this._bw) {
            case 0:
                return "content".equals(fpuVar.f17212a.getScheme());
            default:
                return "android.resource".equals(fpuVar.f17212a.getScheme());
        }
    }

    @Override // g.gsp
    public fkn e(fpu fpuVar, int i) {
        Resources resourcesForApplication;
        int parseInt;
        int i2 = this._bw;
        Context context = this.f13012f;
        switch (i2) {
            case 0:
                return new fkn(baf.bk(context.getContentResolver().openInputStream(fpuVar.f17212a)), gye.DISK);
            default:
                StringBuilder sb = dxc.f14999a;
                fpuVar.getClass();
                Uri uri = fpuVar.f17212a;
                if (uri == null) {
                    resourcesForApplication = context.getResources();
                } else {
                    String authority = uri.getAuthority();
                    if (authority == null) {
                        throw new FileNotFoundException("No package provided: " + uri);
                    }
                    try {
                        resourcesForApplication = context.getPackageManager().getResourcesForApplication(authority);
                    } catch (PackageManager.NameNotFoundException unused) {
                        throw new FileNotFoundException("Unable to obtain resources for package: " + uri);
                    }
                }
                if (uri == null) {
                    parseInt = 0;
                } else {
                    String authority2 = uri.getAuthority();
                    if (authority2 == null) {
                        throw new FileNotFoundException("No package provided: " + uri);
                    }
                    List<String> pathSegments = uri.getPathSegments();
                    if (pathSegments == null || pathSegments.isEmpty()) {
                        throw new FileNotFoundException("No path segments: " + uri);
                    }
                    if (pathSegments.size() == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused2) {
                            throw new FileNotFoundException("Last path segment is not a resource ID: " + uri);
                        }
                    } else {
                        if (pathSegments.size() != 2) {
                            throw new FileNotFoundException("More than two path segments: " + uri);
                        }
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority2);
                    }
                }
                Bitmap decodeResource = BitmapFactory.decodeResource(resourcesForApplication, parseInt, null);
                gye gyeVar = gye.DISK;
                if (decodeResource != null) {
                    return new fkn(decodeResource, null, gyeVar, 0);
                }
                throw new NullPointerException("bitmap == null");
        }
    }
}
