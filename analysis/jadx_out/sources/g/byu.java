package g;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes3.dex */
public final class byu extends ckb {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f12468a = {"orientation"};

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12469b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ byu(Context context, int i) {
        super(context, 0);
        this.f12469b = i;
    }

    @Override // g.ckb, g.gsp
    public final boolean d(fpu fpuVar) {
        switch (this.f12469b) {
            case 0:
                Uri uri = fpuVar.f17212a;
                return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
            default:
                return "file".equals(fpuVar.f17212a.getScheme());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0064, code lost:
    
        if (r2 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r2 == null) goto L33;
     */
    @Override // g.ckb, g.gsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final fkn e(fpu fpuVar, int i) {
        Throwable th;
        Cursor cursor;
        int h;
        switch (this.f12469b) {
            case 0:
                Context context = this.f13012f;
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = fpuVar.f17212a;
                int i2 = 0;
                Cursor cursor2 = null;
                try {
                    cursor = contentResolver.query(uri, f12468a, null, null, null);
                } catch (RuntimeException unused) {
                    cursor = null;
                    break;
                } catch (Throwable th2) {
                    th = th2;
                }
                if (cursor != null) {
                    try {
                    } catch (RuntimeException unused2) {
                        break;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor;
                        if (cursor2 == null) {
                            throw th;
                        }
                        cursor2.close();
                        throw th;
                    }
                    if (!cursor.moveToFirst()) {
                        break;
                    } else {
                        i2 = cursor.getInt(0);
                        cursor.close();
                        String type = contentResolver.getType(uri);
                        if (type != null) {
                            type.startsWith("video/");
                        }
                        return new fkn(null, baf.bk(context.getContentResolver().openInputStream(fpuVar.f17212a)), gye.DISK, i2);
                    }
                }
                break;
            default:
                dix bk = baf.bk(this.f13012f.getContentResolver().openInputStream(fpuVar.f17212a));
                gye gyeVar = gye.DISK;
                jo joVar = new jo(fpuVar.f17212a.getPath());
                ebm ai = joVar.ai("Orientation");
                if (ai != null) {
                    try {
                        h = ai.h(joVar.v);
                    } catch (NumberFormatException unused3) {
                    }
                    return new fkn(null, bk, gyeVar, h);
                }
                h = 1;
                return new fkn(null, bk, gyeVar, h);
        }
    }
}
