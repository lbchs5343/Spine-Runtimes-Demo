package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzfwa {
    public static String zza(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (zze(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (zze(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String zzb(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (zzd(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (zzd(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static boolean zzc(CharSequence charSequence, CharSequence charSequence2) {
        int i;
        char c2;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length == charSequence2.length()) {
            while (i < length) {
                char charAt = charSequence.charAt(i);
                char charAt2 = charSequence2.charAt(i);
                i = (charAt == charAt2 || ((c2 = (char) ((charAt | ' ') + (-97))) < 26 && c2 == ((char) ((charAt2 | ' ') + (-97))))) ? i + 1 : 0;
            }
            return true;
        }
        return false;
    }

    public static boolean zzd(char c2) {
        return c2 >= 'a' && c2 <= 'z';
    }

    public static boolean zze(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }
}
