void main() async{

  print(await createOrderMessage());

}

Future<String> createOrderMessage() async{
  var order = await fetchUserOrder();
  return 'Your order is : $order';
}

Future<String> fetchUserOrder() =>
  Future.delayed(
      const Duration(seconds: 2),
          ()=> 'Large Latte',
  );
