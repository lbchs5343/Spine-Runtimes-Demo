package g;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class bup extends gsp {

    /* renamed from: a, reason: collision with root package name */
    public static final UriMatcher f12238a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f12239b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f12238a = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public bup(Context context) {
        this.f12239b = context;
    }

    @Override // g.gsp
    public final boolean d(fpu fpuVar) {
        Uri uri = fpuVar.f17212a;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f12238a.match(uri) != -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    @Override // g.gsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final fkn e(fpu fpuVar, int i) {
        InputStream inputStream;
        ContentResolver contentResolver = this.f12239b.getContentResolver();
        Uri uri = fpuVar.f17212a;
        int match = f12238a.match(uri);
        if (match != 1) {
            if (match != 2) {
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri);
                    }
                }
                inputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
                if (inputStream != null) {
                    return null;
                }
                return new fkn(baf.bk(inputStream), gye.DISK);
            }
            inputStream = contentResolver.openInputStream(uri);
            if (inputStream != null) {
            }
        } else {
            uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
            if (uri == null) {
                inputStream = null;
                if (inputStream != null) {
                }
            }
            inputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
            if (inputStream != null) {
            }
        }
    }
}
