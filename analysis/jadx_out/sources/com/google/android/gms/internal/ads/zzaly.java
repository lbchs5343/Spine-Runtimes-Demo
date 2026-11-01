package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.ada;
import g.ces;
import g.fvu;
import g.gpt;
import g.tk;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzaly {

    /* renamed from: b, reason: collision with root package name */
    public static final Map f4270b;

    /* renamed from: c, reason: collision with root package name */
    public static final Map f4271c;
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4269a = Pattern.compile("(\\S+?):(\\S+)");

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap.put("red", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f4270b = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f4271c = Collections.unmodifiableMap(hashMap2);
    }

    public static ArrayList d(List list, String str, tk tkVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzalq zzalqVar = (zzalq) list.get(i);
            int zzf = zzalqVar.zzf(str, tkVar.f20042b, tkVar.f20041a, tkVar.f20044d);
            if (zzf > 0) {
                arrayList.add(new ces(zzf, zzalqVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void e(String str, tk tkVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c2;
        int i = tkVar.f20043c;
        int length = spannableStringBuilder.length();
        String str2 = tkVar.f20042b;
        int hashCode = str2.hashCode();
        int i2 = -1;
        if (hashCode == 0) {
            if (str2.equals("")) {
                c2 = 7;
            }
            c2 = 65535;
        } else if (hashCode == 105) {
            if (str2.equals("i")) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode == 3314158) {
            if (str2.equals("lang")) {
                c2 = 6;
            }
            c2 = 65535;
        } else if (hashCode == 3511770) {
            if (str2.equals("ruby")) {
                c2 = 2;
            }
            c2 = 65535;
        } else if (hashCode == 98) {
            if (str2.equals("b")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode == 99) {
            if (str2.equals("c")) {
                c2 = 4;
            }
            c2 = 65535;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals(ada.COLUMN_VALUE)) {
                c2 = 5;
            }
            c2 = 65535;
        } else {
            if (str2.equals("u")) {
                c2 = 3;
            }
            c2 = 65535;
        }
        switch (c2) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 2:
                int h = h(list2, str, tkVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, fvu.f17488a);
                int i3 = tkVar.f20043c;
                int i4 = 0;
                int i5 = 0;
                while (i4 < arrayList.size()) {
                    if ("rt".equals(((fvu) arrayList.get(i4)).f17489b.f20042b)) {
                        fvu fvuVar = (fvu) arrayList.get(i4);
                        int h2 = h(list2, str, fvuVar.f17489b);
                        if (h2 == i2) {
                            h2 = h != i2 ? h : 1;
                        }
                        int i6 = fvuVar.f17489b.f20043c - i5;
                        int i7 = fvuVar.f17490c - i5;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i6, i7);
                        spannableStringBuilder.delete(i6, i7);
                        spannableStringBuilder.setSpan(new zzcx(subSequence.toString(), h2), i3, i6, 33);
                        i5 = subSequence.length() + i5;
                        i3 = i6;
                    }
                    i4++;
                    i2 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 4:
                for (String str3 : tkVar.f20041a) {
                    Map map = f4270b;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i, length, 33);
                    } else {
                        Map map2 = f4271c;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new zzda(tkVar.f20044d), i, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        ArrayList d2 = d(list2, str, tkVar);
        for (int i8 = 0; i8 < d2.size(); i8++) {
            zzalq zzalqVar = ((ces) d2.get(i8)).f12759b;
            if (zzalqVar.zzg() != -1) {
                zzcy.zzb(spannableStringBuilder, new StyleSpan(zzalqVar.zzg()), i, length, 33);
            }
            if (zzalqVar.zzz()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
            }
            if (zzalqVar.zzy()) {
                zzcy.zzb(spannableStringBuilder, new ForegroundColorSpan(zzalqVar.zzc()), i, length, 33);
            }
            if (zzalqVar.zzx()) {
                zzcy.zzb(spannableStringBuilder, new BackgroundColorSpan(zzalqVar.zzb()), i, length, 33);
            }
            if (zzalqVar.zzr() != null) {
                zzcy.zzb(spannableStringBuilder, new TypefaceSpan(zzalqVar.zzr()), i, length, 33);
            }
            int zzd = zzalqVar.zzd();
            if (zzd == 1) {
                zzcy.zzb(spannableStringBuilder, new AbsoluteSizeSpan((int) zzalqVar.zza(), true), i, length, 33);
            } else if (zzd == 2) {
                zzcy.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalqVar.zza()), i, length, 33);
            } else if (zzd == 3) {
                zzcy.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalqVar.zza() / 100.0f), i, length, 33);
            }
            if (zzalqVar.zzw()) {
                spannableStringBuilder.setSpan(new zzcw(), i, length, 33);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009d A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SpannedString f(String str, String str2, List list) {
        char c2;
        char c3;
        char c4;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            String str3 = "";
            if (i2 >= str2.length()) {
                while (!arrayDeque.isEmpty()) {
                    e(str, (tk) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                e(str, new tk("", i, "", Collections.EMPTY_SET), Collections.EMPTY_LIST, spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            int i3 = i2 + 1;
            char charAt = str2.charAt(i2);
            if (charAt == '&') {
                int indexOf = str2.indexOf(59, i3);
                int indexOf2 = str2.indexOf(32, i3);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    String substring = str2.substring(i3, indexOf);
                    int hashCode = substring.hashCode();
                    if (hashCode == 3309) {
                        if (substring.equals("gt")) {
                            c2 = 1;
                            if (c2 != 0) {
                            }
                            if (indexOf == indexOf2) {
                            }
                            i2 = indexOf + 1;
                        }
                        c2 = 65535;
                        if (c2 != 0) {
                        }
                        if (indexOf == indexOf2) {
                        }
                        i2 = indexOf + 1;
                    } else if (hashCode == 3464) {
                        if (substring.equals("lt")) {
                            c2 = 0;
                            if (c2 != 0) {
                            }
                            if (indexOf == indexOf2) {
                            }
                            i2 = indexOf + 1;
                        }
                        c2 = 65535;
                        if (c2 != 0) {
                        }
                        if (indexOf == indexOf2) {
                        }
                        i2 = indexOf + 1;
                    } else if (hashCode != 96708) {
                        if (hashCode == 3374865 && substring.equals("nbsp")) {
                            c2 = 2;
                            if (c2 != 0) {
                                spannableStringBuilder.append('<');
                            } else if (c2 == 1) {
                                spannableStringBuilder.append('>');
                            } else if (c2 == 2) {
                                spannableStringBuilder.append(' ');
                            } else if (c2 != 3) {
                                zzdt.zzf("WebvttCueParser", "ignoring unsupported entity: '&" + substring + ";'");
                            } else {
                                spannableStringBuilder.append('&');
                            }
                            if (indexOf == indexOf2) {
                                spannableStringBuilder.append((CharSequence) " ");
                            }
                            i2 = indexOf + 1;
                        }
                        c2 = 65535;
                        if (c2 != 0) {
                        }
                        if (indexOf == indexOf2) {
                        }
                        i2 = indexOf + 1;
                    } else {
                        if (substring.equals("amp")) {
                            c2 = 3;
                            if (c2 != 0) {
                            }
                            if (indexOf == indexOf2) {
                            }
                            i2 = indexOf + 1;
                        }
                        c2 = 65535;
                        if (c2 != 0) {
                        }
                        if (indexOf == indexOf2) {
                        }
                        i2 = indexOf + 1;
                    }
                    i = 0;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
            } else if (i3 < str2.length()) {
                char charAt2 = str2.charAt(i3);
                int indexOf3 = str2.indexOf(62, i3);
                i3 = indexOf3 == -1 ? str2.length() : indexOf3 + 1;
                int i4 = i3 - 2;
                boolean z = str2.charAt(i4) == '/';
                int i5 = i2 + (charAt2 == '/' ? 2 : 1);
                if (!z) {
                    i4 = i3 - 1;
                }
                String substring2 = str2.substring(i5, i4);
                if (!substring2.trim().isEmpty()) {
                    String trim = substring2.trim();
                    zzdb.zzd(!trim.isEmpty());
                    int i6 = zzen.zza;
                    String str4 = trim.split("[ \\.]", 2)[0];
                    int hashCode2 = str4.hashCode();
                    if (hashCode2 == 98) {
                        if (str4.equals("b")) {
                            c3 = 0;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 == 99) {
                        if (str4.equals("c")) {
                            c3 = 1;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 == 105) {
                        if (str4.equals("i")) {
                            c3 = 2;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 == 3650) {
                        if (str4.equals("rt")) {
                            c3 = 5;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 == 3314158) {
                        if (str4.equals("lang")) {
                            c3 = 3;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 == 3511770) {
                        if (str4.equals("ruby")) {
                            c3 = 4;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else if (hashCode2 != 117) {
                        if (hashCode2 == 118 && str4.equals(ada.COLUMN_VALUE)) {
                            c3 = 7;
                            switch (c3) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                    if (charAt2 == '/') {
                                        while (!arrayDeque.isEmpty()) {
                                            tk tkVar = (tk) arrayDeque.pop();
                                            e(str, tkVar, arrayList, spannableStringBuilder, list);
                                            if (arrayDeque.isEmpty()) {
                                                arrayList.clear();
                                            } else {
                                                arrayList.add(new fvu(tkVar, spannableStringBuilder.length()));
                                            }
                                            if (tkVar.f20042b.equals(str4)) {
                                            }
                                        }
                                    } else if (!z) {
                                        int length = spannableStringBuilder.length();
                                        String trim2 = substring2.trim();
                                        zzdb.zzd(!trim2.isEmpty());
                                        int indexOf4 = trim2.indexOf(" ");
                                        if (indexOf4 == -1) {
                                            c4 = 0;
                                        } else {
                                            str3 = trim2.substring(indexOf4).trim();
                                            c4 = 0;
                                            trim2 = trim2.substring(0, indexOf4);
                                        }
                                        String[] split = trim2.split("\\.", -1);
                                        String str5 = split[c4];
                                        HashSet hashSet = new HashSet();
                                        for (int i7 = 1; i7 < split.length; i7++) {
                                            hashSet.add(split[i7]);
                                        }
                                        arrayDeque.push(new tk(str5, length, str3, hashSet));
                                        break;
                                    }
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    } else {
                        if (str4.equals("u")) {
                            c3 = 6;
                            switch (c3) {
                            }
                        }
                        c3 = 65535;
                        switch (c3) {
                        }
                    }
                }
            }
            i2 = i3;
            i = 0;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void g(String str, gpt gptVar) {
        Matcher matcher = f4269a.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String group = matcher.group(1);
            group.getClass();
            int i2 = 2;
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                char c2 = 65535;
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    if (indexOf != -1) {
                        String substring = group2.substring(indexOf + 1);
                        switch (substring.hashCode()) {
                            case -1364013995:
                                if (substring.equals("center")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring.equals("middle")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring.equals("end")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring.equals("start")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                        }
                        if (c2 == 0) {
                            i2 = 0;
                        } else if (c2 == 1 || c2 == 2) {
                            i2 = 1;
                        } else if (c2 != 3) {
                            zzdt.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                            i2 = Integer.MIN_VALUE;
                        }
                        gptVar.k = i2;
                        group2 = group2.substring(0, indexOf);
                    }
                    if (group2.endsWith("%")) {
                        gptVar.f18551d = zzama.zza(group2);
                        gptVar.f18553f = 0;
                    } else {
                        gptVar.f18551d = Integer.parseInt(group2);
                        gptVar.f18553f = 1;
                    }
                } else if ("align".equals(group)) {
                    switch (group2.hashCode()) {
                        case -1364013995:
                            if (group2.equals("center")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case -1074341483:
                            if (group2.equals("middle")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 100571:
                            if (group2.equals("end")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 3317767:
                            if (group2.equals("left")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 108511772:
                            if (group2.equals("right")) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case 109757538:
                            if (group2.equals("start")) {
                                c2 = 0;
                                break;
                            }
                            break;
                    }
                    if (c2 != 0) {
                        if (c2 != 1) {
                            if (c2 != 2 && c2 != 3) {
                                if (c2 == 4) {
                                    i = 3;
                                } else if (c2 != 5) {
                                    zzdt.zzf("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                } else {
                                    i = 5;
                                }
                            }
                            i = 2;
                        } else {
                            i = 4;
                        }
                    }
                    gptVar.f18550c = i;
                } else if ("position".equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1842484672:
                                if (substring2.equals("line-left")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case -1364013995:
                                if (substring2.equals("center")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case -1276788989:
                                if (substring2.equals("line-right")) {
                                    c2 = 4;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring2.equals("middle")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring2.equals("end")) {
                                    c2 = 5;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring2.equals("start")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                        }
                        if (c2 == 0 || c2 == 1) {
                            i = 0;
                        } else if (c2 != 2 && c2 != 3) {
                            if (c2 == 4 || c2 == 5) {
                                i = 2;
                            } else {
                                zzdt.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring2));
                                i = Integer.MIN_VALUE;
                            }
                        }
                        gptVar.f18554g = i;
                        group2 = group2.substring(0, indexOf2);
                    }
                    gptVar.f18548a = zzama.zza(group2);
                } else if ("size".equals(group)) {
                    gptVar.i = zzama.zza(group2);
                } else if ("vertical".equals(group)) {
                    int hashCode = group2.hashCode();
                    if (hashCode != 3462) {
                        if (hashCode == 3642 && group2.equals("rl")) {
                            c2 = 0;
                        }
                    } else if (group2.equals("lr")) {
                        c2 = 1;
                    }
                    if (c2 != 0) {
                        if (c2 != 1) {
                            zzdt.zzf("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                            i = Integer.MIN_VALUE;
                        } else {
                            i = 2;
                        }
                    }
                    gptVar.f18549b = i;
                } else {
                    zzdt.zzf("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException unused) {
                zzdt.zzf("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }

    public static int h(List list, String str, tk tkVar) {
        ArrayList d2 = d(list, str, tkVar);
        for (int i = 0; i < d2.size(); i++) {
            zzalq zzalqVar = ((ces) d2.get(i)).f12759b;
            if (zzalqVar.zze() != -1) {
                return zzalqVar.zze();
            }
        }
        return -1;
    }

    public static zzalr i(String str, Matcher matcher, zzed zzedVar, List list) {
        gpt gptVar = new gpt();
        try {
            String group = matcher.group(1);
            if (group == null) {
                throw null;
            }
            gptVar.f18552e = zzama.zzb(group);
            String group2 = matcher.group(2);
            if (group2 == null) {
                throw null;
            }
            gptVar.h = zzama.zzb(group2);
            String group3 = matcher.group(3);
            group3.getClass();
            g(group3, gptVar);
            StringBuilder sb = new StringBuilder();
            String zzz = zzedVar.zzz(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(zzz)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(zzz.trim());
                zzz = zzedVar.zzz(StandardCharsets.UTF_8);
            }
            gptVar.j = f(str, sb.toString(), list);
            return new zzalr(gptVar.l().zzp(), gptVar.f18552e, gptVar.h);
        } catch (NumberFormatException unused) {
            zzdt.zzf("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    public static zzalr zzc(zzed zzedVar, List list) {
        Charset charset = StandardCharsets.UTF_8;
        String zzz = zzedVar.zzz(charset);
        if (zzz != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzz);
            if (matcher.matches()) {
                return i(null, matcher, zzedVar, list);
            }
            String zzz2 = zzedVar.zzz(charset);
            if (zzz2 != null) {
                Matcher matcher2 = pattern.matcher(zzz2);
                if (matcher2.matches()) {
                    return i(zzz.trim(), matcher2, zzedVar, list);
                }
            }
        }
        return null;
    }
}
