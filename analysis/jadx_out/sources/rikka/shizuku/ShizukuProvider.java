package rikka.shizuku;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.afz;
import g.gwn;
import g.kj;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import moe.shizuku.api.BinderContainer;

/* loaded from: classes3.dex */
public class ShizukuProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.multiprocess) {
            throw new IllegalStateException("android:multiprocess must be false");
        }
        if (!providerInfo.exported) {
            throw new IllegalStateException("android:exported must be true");
        }
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        BinderContainer binderContainer;
        IBinder iBinder;
        if (kj.f19546d) {
            return new Bundle();
        }
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderContainer.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        if (str.equals("sendBinder")) {
            IBinder iBinder2 = gwn.f18889f;
            if ((iBinder2 == null || !iBinder2.pingBinder()) && (binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER")) != null && (iBinder = binderContainer.binder) != null) {
                gwn.r(getContext().getPackageName(), iBinder);
            }
        } else if (str.equals("getBinder")) {
            IBinder iBinder3 = gwn.f18889f;
            if (iBinder3 == null || !iBinder3.pingBinder()) {
                return null;
            }
            bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", new BinderContainer(iBinder3));
            return bundle2;
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (!kj.f19546d) {
            String packageName = getContext().getPackageName();
            HashMap hashMap = afz.f10165a;
            IBinder iBinder = (IBinder) hashMap.get(TTDownloadField.TT_ACTIVITY);
            IBinder iBinder2 = null;
            if (iBinder == null) {
                try {
                    iBinder = (IBinder) afz.f10166b.invoke(null, TTDownloadField.TT_ACTIVITY);
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    Log.getStackTraceString(e2);
                }
                hashMap.put(TTDownloadField.TT_ACTIVITY, iBinder);
            }
            if (iBinder != null) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.app.IActivityManager");
                    obtain.writeInt(2);
                    iBinder.transact(1599296841, obtain, obtain2, 0);
                    obtain2.readException();
                    IBinder readStrongBinder = obtain2.readStrongBinder();
                    if (readStrongBinder != null) {
                        obtain.recycle();
                        obtain2.recycle();
                        iBinder2 = readStrongBinder;
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
            if (iBinder2 != null) {
                gwn.r(packageName, iBinder2);
                kj.f19546d = true;
            } else {
                kj.f19546d = false;
            }
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
