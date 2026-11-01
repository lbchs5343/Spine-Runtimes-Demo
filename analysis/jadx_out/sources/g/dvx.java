package g;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dvx {

    /* renamed from: a, reason: collision with root package name */
    public static final ctw f14908a = new ctw(2);

    /* renamed from: b, reason: collision with root package name */
    public static final fdq f14909b = new fdq(1);

    public static ta c(Context context, List list) {
        String str;
        Typeface g2;
        Trace.beginSection(baf.y("FontProvider.getFontFamilyResult"));
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                bui buiVar = (bui) list.get(i);
                if (Build.VERSION.SDK_INT < 31 || (g2 = ftk.g((str = buiVar.f12218b))) == null || ftk.d(g2) == null) {
                    ProviderInfo d2 = d(context.getPackageManager(), buiVar, context.getResources());
                    if (d2 == null) {
                        ta taVar = new ta();
                        taVar.f20026b = 1;
                        taVar.f20025a = Collections.singletonList(null);
                        return taVar;
                    }
                    arrayList.add(e(context, buiVar, d2.authority));
                } else {
                    arrayList.add(new gnf[]{new gnf(str, buiVar.f12220d)});
                }
            }
            ta taVar2 = new ta();
            taVar2.f20026b = 0;
            taVar2.f20025a = arrayList;
            return taVar2;
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo d(PackageManager packageManager, bui buiVar, Resources resources) {
        fdq fdqVar = f14909b;
        ctw ctwVar = f14908a;
        Trace.beginSection(baf.y("FontProvider.getProvider"));
        try {
            List list = buiVar.f12217a;
            String str = buiVar.f12219c;
            String str2 = buiVar.f12221e;
            if (list == null) {
                list = eyt.bf(resources, 0);
            }
            ben benVar = new ben();
            benVar.f11393a = str;
            benVar.f11394b = str2;
            benVar.f11395c = list;
            ProviderInfo providerInfo = (ProviderInfo) ctwVar.x(benVar);
            if (providerInfo != null) {
                return providerInfo;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!resolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, fdqVar);
            for (int i = 0; i < list.size(); i++) {
                ArrayList arrayList2 = new ArrayList((Collection) list.get(i));
                Collections.sort(arrayList2, fdqVar);
                if (arrayList.size() == arrayList2.size()) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                            break;
                        }
                    }
                    ctwVar.m(benVar, resolveContentProvider);
                    return resolveContentProvider;
                }
            }
            Trace.endSection();
            return null;
        } finally {
            Trace.endSection();
        }
    }

    public static gnf[] e(Context context, bui buiVar, String str) {
        bcz bczVar;
        ArrayList arrayList;
        Uri withAppendedId;
        Trace.beginSection(baf.y("FontProvider.query"));
        try {
            ArrayList arrayList2 = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            if (Build.VERSION.SDK_INT < 24) {
                bczVar = new fnq(context, build);
            } else {
                aoy aoyVar = new aoy();
                aoyVar.h = context.getContentResolver().acquireUnstableContentProviderClient(build);
                bczVar = aoyVar;
            }
            Cursor cursor = null;
            try {
                String[] strArr = {ada.COLUMN_ID, "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                Trace.beginSection(baf.y("ContentQueryWrapper.query"));
                try {
                    cursor = bczVar.t(build, strArr, new String[]{buiVar.f12222f});
                    Trace.endSection();
                    if (cursor != null && cursor.getCount() > 0) {
                        int columnIndex = cursor.getColumnIndex("result_code");
                        ArrayList arrayList3 = new ArrayList();
                        int columnIndex2 = cursor.getColumnIndex(ada.COLUMN_ID);
                        int columnIndex3 = cursor.getColumnIndex("file_id");
                        int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursor.getColumnIndex("font_weight");
                        int columnIndex6 = cursor.getColumnIndex("font_italic");
                        while (cursor.moveToNext()) {
                            int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                            int i2 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                            if (columnIndex3 == -1) {
                                arrayList = arrayList3;
                                withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                            } else {
                                arrayList = arrayList3;
                                withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                            }
                            Uri uri = withAppendedId;
                            ArrayList arrayList4 = arrayList;
                            arrayList4.add(new gnf(uri, i2, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                            arrayList3 = arrayList4;
                        }
                        arrayList2 = arrayList3;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    bczVar.close();
                    return (gnf[]) arrayList2.toArray(new gnf[0]);
                } finally {
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                bczVar.close();
                throw th;
            }
        } finally {
        }
    }
}
