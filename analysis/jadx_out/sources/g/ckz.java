package g;

import java.util.Deque;

/* loaded from: classes.dex */
public abstract class ckz {
    public static char a(int i, String str) {
        if (i >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i);
    }

    public abstract int b(String str, int i, Deque deque, dbf dbfVar);

    public int getIdentifier(int i, String str) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + i;
            char a2 = a(i3, str);
            if (!fso.az(a2) && !fso.p(a2)) {
                return i3;
            }
            i2++;
        }
    }
}
