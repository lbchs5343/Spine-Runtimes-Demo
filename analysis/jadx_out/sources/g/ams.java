package g;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbce;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ams extends zzbce {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f10492g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ams(int i, String str, Object obj, Object obj2, int i2) {
        super(i, obj, obj2, str);
        this.f10492g = i2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ams(String str, String str2, String str3) {
        super(1, str2, str3, str);
        this.f10492g = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbce
    public final /* bridge */ /* synthetic */ Object e(JSONObject jSONObject) {
        switch (this.f10492g) {
            case 0:
                return Boolean.valueOf(jSONObject.optBoolean(zzl(), ((Boolean) zzk()).booleanValue()));
            case 1:
                return Integer.valueOf(jSONObject.optInt(zzl(), ((Integer) zzk()).intValue()));
            case 2:
                return Long.valueOf(jSONObject.optLong(zzl(), ((Long) zzk()).longValue()));
            case 3:
                return Float.valueOf((float) jSONObject.optDouble(zzl(), ((Float) zzk()).floatValue()));
            default:
                return jSONObject.optString(zzl(), (String) zzk());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbce
    public final /* bridge */ /* synthetic */ Object f(SharedPreferences sharedPreferences) {
        switch (this.f10492g) {
            case 0:
                return Boolean.valueOf(sharedPreferences.getBoolean(zzl(), ((Boolean) zzk()).booleanValue()));
            case 1:
                return Integer.valueOf(sharedPreferences.getInt(zzl(), ((Integer) zzk()).intValue()));
            case 2:
                return Long.valueOf(sharedPreferences.getLong(zzl(), ((Long) zzk()).longValue()));
            case 3:
                return Float.valueOf(sharedPreferences.getFloat(zzl(), ((Float) zzk()).floatValue()));
            default:
                return sharedPreferences.getString(zzl(), (String) zzk());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbce
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        switch (this.f10492g) {
            case 0:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzl())) ? Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(zzl()))) : (Boolean) zzk();
            case 1:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzl())) ? Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(zzl()))) : (Integer) zzk();
            case 2:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzl())) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(zzl()))) : (Long) zzk();
            case 3:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzl())) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(zzl()))) : (Float) zzk();
            default:
                return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzl())) ? bundle.getString("com.google.android.gms.ads.flag.".concat(zzl())) : (String) zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbce
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        switch (this.f10492g) {
            case 0:
                editor.putBoolean(zzl(), ((Boolean) obj).booleanValue());
                break;
            case 1:
                editor.putInt(zzl(), ((Integer) obj).intValue());
                break;
            case 2:
                editor.putLong(zzl(), ((Long) obj).longValue());
                break;
            case 3:
                editor.putFloat(zzl(), ((Float) obj).floatValue());
                break;
            default:
                editor.putString(zzl(), (String) obj);
                break;
        }
    }
}
