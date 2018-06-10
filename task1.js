/* Task 1 */
function isPalindrom(str){	
    str = str.toLowerCase().replace(/[^a-zA-Zа-яА-Я0-9]/g, '');
    if (str.split('').reverse().join('') == str) {
        return 'YES';
    }
    return 'NO';
}
process.stdout.write( isPalindrom(process.argv[2]));
